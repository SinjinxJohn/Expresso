import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../repository/auth_repository.dart';
import '../utils/routes/routes_name.dart';
import '../utils/utils.dart';

class AuthViewModel with ChangeNotifier{
  final _myrepo = AuthRepository();
  

  

  Future<void> loginApi(dynamic data,BuildContext context)async{
    
    _myrepo.loginApi(data).then((value) {
      // setLoading(false);
      Utils.snackBar("Login successful", context);
      Navigator.pushNamed(context, RoutesName.home);
      if(kDebugMode){
        print(value.toString());
      }
      
    }).onError((error, stackTrace){
      if(kDebugMode){
        Utils.snackBar("User/credentials does not exist",context);
        print(error.toString());
      }

    });

  }

}