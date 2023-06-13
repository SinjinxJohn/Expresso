import 'package:expresso/res/components/url.dart';
import 'package:expresso/view_model/auth_view_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:image_capture_field/image_capture_field.dart';
import 'package:provider/provider.dart';

import '../../config/palette.dart';
import '../../utils/routes/routes_name.dart';
import '../../utils/utils.dart';
import 'package:http/http.dart' as http;

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _phonecontroller = TextEditingController();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _regnoController = TextEditingController();

  final TextEditingController _passwordConfirmController =
      TextEditingController();
  // final TextEditingController _emailVerifcontroller = TextEditingController();
  // final TextEditingController datecontroller = TextEditingController();
  final TextEditingController userController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  // final TextEditingController lastNameController = TextEditingController();

  //focus node
  FocusNode name = FocusNode();
  FocusNode email = FocusNode();
  FocusNode username = FocusNode();
  FocusNode regno = FocusNode();
  FocusNode pass = FocusNode();
  FocusNode confirmPass = FocusNode();
  FocusNode phone = FocusNode();

  final _imageController = ImageCaptureController();
  // postData() async {
  //   try{
  //     var response = await http.post(Uri.parse(AppUrl.registerEndPoint), body: {
  //     'name': nameController.text.toString(),
  //     'email': _emailcontroller.text.toString(),
  //     'username': userController.text.toString(),
  //     'regNo': _regnoController.text.toString(),
  //     'password': _passwordController.text.toString(),
  //     'confirmPassword': _passwordConfirmController.text.toString(),
  //     'phoneNo': _phonecontroller.text.toString(),
      
  //   }
  //   );
  //   if(kDebugMode){
  //     print(response.body);
  //   }
  //   }catch(e){
  //     print(e);
  //   }
  // }
  // DateTime? date;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _phonecontroller.dispose();
    _emailcontroller.dispose();
    userController.dispose();
    _passwordConfirmController.dispose();
    nameController.dispose();
    _regnoController.dispose();
    _passwordController.dispose();
    _imageController.clear();
    // _imageController.dispose();
    // datecontroller.dispose();
    // _phoneVerifcontroller.dispose();
    // _emailVerifcontroller.dispose();
    // genderController.dispose();
    // firstNameController.dispose();
    // lastNameController.dispose();
    name.dispose();
    email.dispose();
    username.dispose();
    regno.dispose();
    pass.dispose();
    confirmPass.dispose();
    phone.dispose();
    // _imageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authViewModelreg = Provider.of<AuthViewModel>(context);
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: screenWidth * 0.242,
                bottom: screenHeight * 0.1,
                right: screenWidth * 0.126,
                top: 0.07 * screenHeight),
            child: const Row(
              children: [
                Text(
                  "Create a ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "Expresso Account",
                  style: TextStyle(
                      color: Color.fromRGBO(54, 115, 226, 1),
                      fontSize: 17,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                // top: screenHeight * 0.03,
                left: screenWidth * 0.08,
                bottom: screenHeight * 0.03),
            child: const Text(
              "Enter your personal details",
              style: TextStyle(
                  fontSize: 20,
                  color: Color.fromRGBO(0, 0, 1, 1),
                  fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: screenWidth * 0.08,
                right: screenWidth * 0.08,
                bottom: screenHeight * 0.015),
            child: Theme(
              data: ThemeData(hintColor: kPrimaryColor),
              child: TextField(
                // inputFormatters: [],
                onSubmitted: (value) {
                  Utils.fieldFocusNode(context, name, email);
                },
                focusNode: name,
                controller: nameController,
                decoration: const InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 9, horizontal: 30),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Color.fromRGBO(255, 255, 255, 1))),
                  labelText: "Name",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: screenWidth * 0.08,
                right: screenWidth * 0.08,
                bottom: screenHeight * 0.015),
            child: Theme(
              data: ThemeData(hintColor: kPrimaryColor),
              child: TextField(
                // inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'^[\w\.-]+@vitstudent\.ac\.in$'))],
                focusNode: email,
                onSubmitted: (value) {
                  Utils.fieldFocusNode(context, email, username);
                },
                controller: _emailcontroller,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 9, horizontal: 30),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 3, color: Color.fromRGBO(255, 255, 255, 1))),
                    labelText: "Email",
                    floatingLabelBehavior: FloatingLabelBehavior.always),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: screenWidth * 0.08,
                right: screenWidth * 0.08,
                bottom: screenHeight * 0.015),
            child: Theme(
              data: ThemeData(hintColor: kPrimaryColor),
              child: TextField(
                focusNode: username,
                onSubmitted: (value) {
                  Utils.fieldFocusNode(context, username, regno);
                },
                controller: userController,
                decoration: const InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 9, horizontal: 30),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 3, color: Color.fromRGBO(255, 255, 255, 1))),
                    labelText: "User Name",
                    floatingLabelBehavior: FloatingLabelBehavior.always),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: screenWidth * 0.08,
                right: screenWidth * 0.08,
                bottom: screenHeight * 0.015),
            child: Theme(
              data: ThemeData(hintColor: kPrimaryColor),
              child: TextField(
                focusNode: regno,
                textCapitalization: TextCapitalization.characters,
                onSubmitted: (value) {
                  Utils.fieldFocusNode(context, regno, pass);
                },
                controller: _regnoController,
                decoration: const InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 9, horizontal: 30),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 3, color: Color.fromRGBO(255, 255, 255, 1))),
                    labelText: "Registration Number",
                    floatingLabelBehavior: FloatingLabelBehavior.always),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(
                left: screenWidth * 0.08,
                right: screenWidth * 0.08,
                bottom: screenHeight * 0.015),
            child: Theme(
              data: ThemeData(hintColor: kPrimaryColor),
              child: TextField(
                focusNode: pass,
                onSubmitted: (value) {
                  Utils.fieldFocusNode(context, pass, confirmPass);
                },
                controller: _passwordController,
                keyboardType: TextInputType.visiblePassword,
                decoration: const InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 9, horizontal: 30),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 3, color: Color.fromRGBO(255, 255, 255, 1))),
                    labelText: "Password",
                    floatingLabelBehavior: FloatingLabelBehavior.always),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: screenWidth * 0.08,
                right: screenWidth * 0.08,
                bottom: screenHeight * 0.015),
            child: Theme(
              data: ThemeData(hintColor: kPrimaryColor),
              child: TextField(
                focusNode: confirmPass,
                onSubmitted: (value) {
                  Utils.fieldFocusNode(context, confirmPass, phone);
                },
                controller: _passwordConfirmController,
                keyboardType: TextInputType.visiblePassword,
                decoration: const InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 9, horizontal: 30),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 3, color: Color.fromRGBO(255, 255, 255, 1))),
                    labelText: "Confirm Password",
                    floatingLabelBehavior: FloatingLabelBehavior.always),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(
                left: screenWidth * 0.08,
                right: screenWidth * 0.08,
                bottom: screenHeight * 0.015),
            child: Theme(
              data: ThemeData(hintColor: kPrimaryColor),
              child: TextField(
                focusNode: phone,
                onSubmitted: (value) {
                  FocusScope.of(context).unfocus();
                },
                controller: _phonecontroller,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 9, horizontal: 30),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 3, color: Color.fromRGBO(255, 255, 255, 1))),
                    labelText: "Phone Number",
                    floatingLabelBehavior: FloatingLabelBehavior.always),
              ),
            ),
          ),
          // Padding(
          //   padding:  EdgeInsets.only(left:screenWidth*0.08,right: screenWidth*0.08,bottom: screenHeight*0.01),
          //   child:const Text("Profile Picture:",style: TextStyle(color:kPrimaryColor,fontSize: 17,fontWeight: FontWeight.w400),),
          // ),
          // Padding(
          //   padding: EdgeInsets.only(left:screenWidth*0.08,right: screenWidth*0.08,bottom: screenHeight*0.015),
          //   child: ImageCaptureField(

          //     controller: _imageController,
          //     // initialImage: Image(image: NetworkImage(
          //     //   "https://picsum.photos/id/237/200/300"
          //     //   )),

          //       includeCropper: false,
          //       borderRadiusValue: 4,
          //       iconBackgroundColor: kPrimaryColor,
          //   ),
          // ),
          Padding(
            padding: EdgeInsets.only(
                left: screenWidth * 0.08, right: screenWidth * 0.08),
            child: TextButton(
              onPressed: () {
                if (_emailcontroller.text.isEmpty ||
                    nameController.text.isEmpty ||
                    userController.text.isEmpty ||
                    _regnoController.text.isEmpty ||
                    _passwordController.text.isEmpty ||
                    _passwordConfirmController.text.isEmpty ||
                    _phonecontroller.text.isEmpty) {
                  Utils.snackBar(
                      "Please enter all the details to proceed", context,errorColor);
                } else if (_passwordController.text.length < 8) {
                  Utils.snackBar(
                      "Password should have a minimum of 8 charachters",
                      context,errorColor);
                } else {
                  // postData();
                  Map data = {
                    'name': nameController.text.toString(),
                    'email': _emailcontroller.text.toString(),
                    'username': userController.text.toString(),
                    'regNo': _regnoController.text.toString(),
                    'password': _passwordController.text.toString(),
                    'confirmPassword':
                        _passwordConfirmController.text.toString(),
                    'phoneNo': _phonecontroller.text.toString(),
                    // 'profilePic':_imageController.imagePath.toString(),
                  };
                  authViewModelreg.signUpApi(data, context);
                  if (kDebugMode) {
                    print("api hit");
                    print(nameController.text.toString());
                    // print(nameController.text.toString());
                    print(_emailcontroller.text.toString());
                    print(userController.text.toString());
                    print(_regnoController.text.toString());
                    print(_passwordController.text.toString());
                    print(_passwordConfirmController.text.toString());
                    print(_phonecontroller.text.toString());
                    print(_imageController.imagePath.toString());
                    print(_imageController.imagePath.toString());
                  }
                  // Navigator.pushNamed(context, RoutesName.finalLog);
                }
              },
              child: Container(
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(5)),
                height: screenHeight * 0.05,
                width: screenWidth * 0.84,
                child: const Center(
                    child: Text(
                  "Done",
                  style: TextStyle(
                      color: kButtonTextColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                )),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
