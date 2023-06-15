import 'package:expresso/data/model/user_model.dart';
import 'package:expresso/data/network/BaseApiServices.dart';
import 'package:expresso/data/network/NetworkApiServices.dart';

import '../res/components/url.dart';
import '../utils/shared_service.dart';

class AuthRepository {
  BaseApiService _apiService = NetworkApiServices();

  Future<dynamic> loginApi(dynamic data) async {
    try {
      dynamic response = await _apiService.getPostApiResponse(AppUrl.loginEndPoint, data).then((value) async {
        //checking if response is success and calling setlogindetails
        if (value['status'] == 'success') {
          await SharedService.setLoginDetails(
              UserModel.fromJson(value)).then((value) {
          });
        }
      });
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> signUpApi(dynamic data) async {
    try {
      dynamic response =
          await _apiService.getPostApiResponse(AppUrl.registerEndPoint, data).then((value) async {
            //checking if response is success and calling setlogindetails
            if (value['status'] == 'success') {
              await SharedService.setLoginDetails(
                  UserModel.fromJson(value)).then((value) {
              });
            }
          });
    } catch (e) {
      rethrow;
    }
  }
}
