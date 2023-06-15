import 'package:expresso/view_model/user_view_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/model/user_model.dart';
import '../repository/auth_repository.dart';
import '../utils/routes/routes_name.dart';
import '../utils/shared_service.dart';
import '../utils/utils.dart';

class AuthViewModel with ChangeNotifier{
  final _myrepo = AuthRepository();
  //  bool _loading=false;
  // bool get loading=>_loading;

  // setLoading(bool value){
  //   _loading=value;
  //   notifyListeners();

  // }
  

  

  Future<void> loginApi(dynamic data,BuildContext context)async{
    // setLoading(true);
    
    _myrepo.loginApi(data).then((value)  {
      // setLoading(false);



      Utils.snackBar("Login successful", context,Colors.green);
      Navigator.pushNamed(context, RoutesName.home);
      if(kDebugMode){
        print(value.toString());
      }
      
    }).onError((error, stackTrace){
      if(kDebugMode){
        Utils.snackBar('''$error''',context,Colors.red);
        print(error.toString());
      }

    });

    
  }
  Future<void> signUpApi(dynamic data,BuildContext context)async{
    
    _myrepo.signUpApi(data).then((value) {
      // setLoading(false);
      Utils.snackBar("Sign Up successful", context,Colors.green);
      Navigator.pushNamed(context, RoutesName.finalLog);
      if(kDebugMode){
        print(value.toString());
      }
      
    }).onError((error, stackTrace){
      if(kDebugMode){
        Utils.snackBar(error.toString(),context,Colors.red);
        print(error.toString());
      }

    });

  }

}