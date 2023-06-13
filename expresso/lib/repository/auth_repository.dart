import 'package:expresso/data/network/BaseApiServices.dart';
import 'package:expresso/data/network/NetworkApiServices.dart';

import '../res/components/url.dart';

class AuthRepository{
  BaseApiService _apiService=NetworkApiServices();


  Future<dynamic>loginApi(dynamic data)async{
    try{
      dynamic response = await _apiService.getPostApiResponse(AppUrl.loginEndPoint, data);

    }catch(e){
      rethrow ;
    }

  }

  Future<dynamic>signUpApi(dynamic data)async{
    try{
      dynamic response = await _apiService.getPostApiResponse(AppUrl.registerEndPoint, data);

    }catch(e){
      rethrow;
    }

  }
}