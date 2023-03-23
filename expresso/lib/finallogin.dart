import 'package:flutter/material.dart';

import 'config/palette.dart';

class FinalLog extends StatefulWidget {
  const FinalLog({super.key});

  @override
  State<FinalLog> createState() => _FinalLogState();
}

class _FinalLogState extends State<FinalLog> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return WillPopScope(
      onWillPop: ()=>Future.value(false),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: screenWidth * 1,
                height: screenHeight * 0.47,
                decoration:
                    const BoxDecoration(color: Colors.white),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: screenHeight * 0.11,
                    left: screenWidth * 0.08,
                    right: screenWidth * 0.08,
                    bottom: screenHeight * 0.004),
                child: const Text(
                  "Your account has been registered",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(54, 115, 226, 1),
                      fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    // top: screenHeight * 0.23,
                    left: screenWidth * 0.06,
                    right: screenWidth * 0.06,
                    bottom: screenHeight * 0.26),
                child: const Center(
                  child: Text(
                    "for Expresso service",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(54, 115, 226, 1),
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
    
            
              Padding(
                padding: EdgeInsets.only(
                    left: screenWidth * 0.08,
                    right: screenWidth * 0.08,
                    bottom: screenHeight*0.05
                    ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/');
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
          
                  ],
                ),
              )
      ,
          ),
    );
  }
}