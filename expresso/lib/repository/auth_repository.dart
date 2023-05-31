import 'package:expresso/data/network/BaseApiServices.dart';
import 'package:expresso/data/network/NetworkApiServices.dart';

import '../res/components/url.dart';

class AuthRepository{
  BaseApiService _apiService=NetworkApiServices();


  Future<dynamic>loginApi(dynamic data)async{
    try{
      dynamic response = await _apiService.getPostApiResponse(AppUrl.baseUrl, data);

    }catch(e){
      throw e;
    }

  }
}