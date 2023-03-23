// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore: file_names
import 'package:expresso/config/palette.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
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
              decoration:
                  const BoxDecoration(color: kPrimaryColor),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: screenHeight * 0.23,
                  left: screenWidth * 0.08,
                  bottom: screenHeight * 0.02),
              child: const Text(
                "Enter mobile number",
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
              child: const TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 3, color: ktexfieldColor)),
                    labelText: "PhoneNumber",
                    floatingLabelBehavior: FloatingLabelBehavior.always),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: screenWidth * 0.08,
                  right: screenWidth * 0.08,
                  ),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/homepage');
                },
                child: Container(
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
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: screenWidth * 0.33, right: screenWidth * 0.23,top: screenHeight*0.02),
              child: Row(
                children: [
                  const Text(
                    "new user?",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/pageview');
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
