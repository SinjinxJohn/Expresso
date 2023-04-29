import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
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
                bottom: screenHeight * 0.34,
                right: screenWidth * 0.126,
                top: 0.07 * screenHeight),
            child: Row(
              children: const [
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
              top: screenHeight * 0.07,
              left: screenWidth * 0.08,
            ),
            child: const Text(
              "Enter your mobile number",
              style: TextStyle(
                  fontSize: 20,
                  color: Color.fromRGBO(0, 0, 1, 1),
                  fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: screenHeight * 0.0044,
                left: screenWidth * 0.08,
                bottom: screenHeight * 0.04),
            child: const Text(
              "and email address",
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
                bottom: screenHeight * 0.03),
            child: const TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Color.fromRGBO(255, 255, 255, 1))),
                  labelText: "Phone Number",
                  floatingLabelBehavior: FloatingLabelBehavior.always),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: screenWidth * 0.08,
              right: screenWidth * 0.08,
            ),
            child: const TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Color.fromRGBO(255, 255, 255, 1))),
                  labelText: "Email address",
                  floatingLabelBehavior: FloatingLabelBehavior.always),
            ),
          ),
        ],
      ),
    ));
  }
}
