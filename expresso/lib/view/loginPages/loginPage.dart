// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore: file_names
import 'dart:convert';

import 'package:expresso/config/palette.dart';
// import 'package:expresso/models/login.dart';
import 'package:expresso/utils/routes/routes_name.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:expresso/utils/utils.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

import '../../view_model/auth_view_model.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final ValueNotifier<bool> _value = ValueNotifier<bool>(true);
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();


  // Future<Login> loginApi(String name,String password)async{
  //   final response = await http.post(Uri.parse('https://expresso-img9.onrender.com/users/login'),
  //   headers: <String,String>{
  //     'Content-type':'application/json; charset=UTF-8',
  //   },
  //   body: jsonEncode(<String,String>{
  //     'name':name,
  //     'password':password

  //   })
  //   );
  //   if(response.statusCode==201){
  //     return Login.fromJson(jsonDecode(response.body));

  //   }else{
  //     throw Exception('Failed to create login');
  //   }
  // }

  FocusNode email = FocusNode();
  FocusNode password = FocusNode();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    email.dispose();
    password.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final authViewModel = Provider.of<AuthViewModel>(context);
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: screenWidth * 1,
              height: screenHeight * 0.47,
              decoration: const BoxDecoration(color: kPrimaryColor),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: screenHeight * 0.16,
                  left: screenWidth * 0.08,
                  bottom: screenHeight * 0.02),
              child: const Text(
                "Enter email and password",
                style: TextStyle(
                    fontSize: 20,
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: screenWidth * 0.08,
                  right: screenWidth * 0.08,
                  bottom: screenHeight * 0.019),
              child:  TextField(
                controller: _emailcontroller,
                focusNode: email,
              
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 9,horizontal: 30),
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 3, color: ktexfieldColor)),
                    labelText: "Email",
                    floatingLabelBehavior: FloatingLabelBehavior.always),
                    onSubmitted: (value) => Utils.fieldFocusNode(context,email,password),
              ),
            ),
            ValueListenableBuilder(valueListenable: _value
            , builder: (context,value,child){
              return Padding(
              padding: EdgeInsets.only(
                  left: screenWidth * 0.08,
                  right: screenWidth * 0.08,
                  bottom: screenHeight * 0.019),
              child: TextField(
                controller: _passwordcontroller,
                obscureText: _value.value,
                focusNode: password,
                
              
                
                decoration: InputDecoration(
                  suffixIcon: InkWell(
                    onTap: () { _value.value=!_value.value;},
                    child: const Icon(Icons.visibility_off_outlined)),
                  contentPadding: const EdgeInsets.symmetric(vertical: 9,horizontal: 30),
                    border: const OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 3, color: ktexfieldColor)),
                    labelText: "Password",
                    floatingLabelBehavior: FloatingLabelBehavior.always)
                    ,
                    
              ),
            );
            }),
            Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.08,
                right: screenWidth * 0.08),
              child: TextButton(
                
                onPressed: (){

                if(_emailcontroller.text.isEmpty){
                      Utils.snackBar("Please enter your email", context,errorColor);
                    }else if(_passwordcontroller.text.isEmpty){
                      Utils.snackBar("Please enter your password", context,errorColor);
                    }else{
                      Map data = {
                        'email':_emailcontroller.text.toString(),
                        'password':_passwordcontroller.text.toString()
                      };
                      authViewModel.loginApi(data,context);
                      if(kDebugMode){
                        print("api hit");
                        print(data.toString());
                      }
                      // Navigator.pushNamed(context, RoutesName.home);
                    }
            
              }, child: Container(
                    
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(5)),
                    height: screenHeight * 0.05,
                    width: screenWidth * 0.84,
                    child: const Center(
                        child: Text(
                      "Login",
                      style: TextStyle(
                          color: kButtonTextColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                    )),
                  ),),
            ),
            
            
            Padding(
              padding: EdgeInsets.only(
                  left: screenWidth * 0.33,
                  right: screenWidth * 0.23,
                  top: screenHeight * 0.01),
              child: Row(
                children: [
                  const Text(
                    "new user?",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w700),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, RoutesName.register);
                      },
                      child: const Text(
                        "SIGN UP",
                        style: TextStyle(
                            color: kPrimaryColor, fontWeight: FontWeight.w700),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
