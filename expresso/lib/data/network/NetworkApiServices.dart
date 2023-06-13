import 'dart:convert';
// import 'dart:html';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:expresso/data/app_exceptions.dart';
import 'package:expresso/data/network/BaseApiServices.dart';

class NetworkApiServices extends BaseApiService {
  @override
  Future getGetApiResponse(String url) async {
    dynamic responseJson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 15));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No internet connection');
    } 
    return responseJson;
  }

  @override
  Future getPostApiResponse(String url, dynamic data) async {
    dynamic responseJson;
    try {
      final response = await
          http.post(Uri.parse(url), body: json.encode(data),headers: {'Content-type':'application/json; charset=utf-8'}
          ).timeout(const Duration(seconds: 15));
          
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No internet connection');
    }
    return responseJson;
  }
  


  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
      dynamic responseJson = jsonDecode(response.body);
        return responseJson;

      case 201:
        dynamic responseJson = jsonDecode(response.body);
        // return responseJson;
        var accessToken = responseJson['token'];
        var userDetails = responseJson['user'];
        print(accessToken);
        print(userDetails);
        return {'token':accessToken,'userDetails':userDetails};
      case 204:
        throw NoContentException(response.body.toString());
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:
        throw UnauthorizedException(response.body.toString());
      case 404:
        throw NotFoundException(response.body.toString());
      case 500:
        throw ServerException(response.body.toString());
      default:
        throw FetchDataException(
            "\nError occured while communicating with data with status code ${response.statusCode}");
    }
  }
}
