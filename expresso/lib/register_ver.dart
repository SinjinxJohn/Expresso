import 'package:expresso/config/palette.dart';

import 'package:flutter/material.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: screenWidth * 0.242,
                    bottom: screenHeight * 0.22,
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

              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: screenHeight * 0.17,
                      left: screenWidth * 0.08,
                    ),
                    child: const Text(
                      "Enter",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromRGBO(0, 0, 1, 1),
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: screenHeight * 0.17, left: screenWidth * 0.01),
                    child: const Text(
                      "OTP of mobile number",
                      style: TextStyle(
                          fontSize: 20,
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
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
                    right: screenWidth * 0.07,
                    bottom: screenHeight * 0.03),
                child: Theme(
                  data: ThemeData(hintColor: kPrimaryColor),
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        suffixIcon: TextButton(
                            style: ButtonStyle(),
                            onPressed: () {},
                            child: const Text(
                              "Resend",
                              style: TextStyle(color: kPrimaryColor),
                            )),
                        border: const OutlineInputBorder(
                            borderSide: BorderSide(
                          color: kPrimaryColor,
                        )),
                        labelText: "Verification of Phone Number",
                        floatingLabelBehavior: FloatingLabelBehavior.always),
                  ),
                ),
              ),
              // SizedBox(
              //   width: 6,
              // ),
              // SizedBox(width: screenWidth*0.01,),
              // TextButton(
              //   style: ButtonStyle(backgroundColor:MaterialStateProperty.all(kPrimaryColor)),

              //   onPressed: (){}, child: Text("Resend",style: TextStyle(color: Colors.white),)),
              Padding(
                padding: EdgeInsets.only(
                    left: screenWidth * 0.08,
                    right: screenWidth * 0.08,
                    bottom: screenHeight * 0.029),
                child: Theme(
                  data: ThemeData(hintColor: kPrimaryColor),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        suffixIcon: TextButton(
                            // style: ButtonStyle(
                            //     backgroundColor:
                            //         MaterialStateProperty.all(kPrimaryColor)),
                            onPressed: () {},
                            child: const Text(
                              "Resend",
                              style: TextStyle(color: kPrimaryColor),
                            )),
                        border: const OutlineInputBorder(
                            borderSide: BorderSide(color: kPrimaryColor)),
                        labelText: "Verification of Email address",
                        floatingLabelBehavior: FloatingLabelBehavior.always),
                  ),
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.only(
              //       left: screenWidth * 0.08,
              //       right: screenWidth * 0.08,
              //       bottom: screenHeight * 0.019),
              //   child: GestureDetector(
              //     onTap: () {
              //       Navigator.pushNamed(context, '/details_verif');
              //     },
              //     child: Container(
              //       decoration: BoxDecoration(
              //           color: Color.fromRGBO(54, 115, 226, 1),
              //           borderRadius: BorderRadius.circular(5)),
              //       height: screenHeight * 0.05,
              //       width: screenWidth * 0.84,
              //       child: const Center(
              //           child: Text(
              //         "Next",
              //         style: TextStyle(
              //             color: Colors.white,
              //             fontSize: 15,
              //             fontWeight: FontWeight.w700),
              //       )),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
