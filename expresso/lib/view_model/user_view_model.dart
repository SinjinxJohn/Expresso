import 'package:expresso/data/model/user_model.dart';
import 'package:flutter/cupertino.dart';

import '../utils/shared_service.dart';

class UserViewModel with ChangeNotifier{


  Future<UserModel?> getUser() async {
     return await SharedService.loginDetails();
  }

//   Future<bool> saveUser(UserModel userModel)async {
//
//     final SharedPreferences sp = await SharedPreferences.getInstance();
//
//     //can convert to object and then save but this works for now
//     sp.setString('token', userModel.token.toString());
//     sp.setString('name', userModel.user!.name.toString());
//     sp.setString('email', userModel.user!.email.toString());
//     sp.setString('regNo', userModel.user!.regNo.toString());
//     sp.setString('phoneNo', userModel.user!.phoneNo.toString());
//     sp.setString('username', userModel.user!.username.toString());
//     notifyListeners();
//     return true;
//   }
//
//   Future<UserModel> getUser() async{
//     final SharedPreferences sp = await SharedPreferences.getInstance();
//     final String? token = sp.getString('token');
//     // final String? name = sp.getString('name');
//     // final String? email = sp.getString('email');
//     // final String? regNo = sp.getString('regNo');
//     // final String? phoneNo = sp.getString('phoneNo');
//     // final String? username = sp.getString('username');
//
//     return UserModel(
//       token: token.toString(),
//       // user: User(
//       //   name: name.toString(),
//       //   email: email.toString(),
//       //   regNo: regNo.toString(),
//       //   phoneNo: int.parse(phoneNo.toString()),
//       //   username: username.toString(),
//       // )
//     );
// }
//
//   Future<bool> remove() async{
//     final SharedPreferences sp = await SharedPreferences.getInstance();
//     return sp.clear();
//   }
}