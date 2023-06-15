import 'dart:convert';

import 'package:api_cache_manager/api_cache_manager.dart';
import 'package:api_cache_manager/models/cache_db_model.dart';
import 'package:expresso/data/model/user_model.dart';
import 'package:flutter/material.dart';

class SharedService {

  //function to check if user is logged in
  static Future<bool> isLoggedIn() async {
    var isCacheKeyExist =
    await APICacheManager().isAPICacheKeyExist("login_id");

    return isCacheKeyExist;
  }

  //function to get userDetails from storage
  static Future<UserModel?> loginDetails() async {
    var isCacheKeyExist =
    await APICacheManager().isAPICacheKeyExist("login_id");

    if (isCacheKeyExist) {
      var cacheData = await APICacheManager().getCacheData("login_id");

      return userResponseJson(cacheData.syncData);
    }
    return null;
  }

  //function to set userDetails to storage
  static Future<void> setLoginDetails(
      UserModel loginResponse,
      ) async {
    APICacheDBModel cacheModel = APICacheDBModel(
      key: "login_id",
      syncData: jsonEncode(loginResponse.toJson()),
    );

    await APICacheManager().addCacheData(cacheModel);
  }

  //logout function deletes userDetails
  static Future<void> logout(BuildContext context) async {
    await APICacheManager().deleteCache("login_id");
  }

}