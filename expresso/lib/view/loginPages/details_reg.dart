import 'package:flutter/material.dart';

class DetailsVerif extends StatefulWidget {
  const DetailsVerif({super.key});

  @override
  State<DetailsVerif> createState() => _DetailsVerifState();
}

class _DetailsVerifState extends State<DetailsVerif> {
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
                    bottom: screenHeight * 0.04),
                child: const Text(
                  "Enter your name",
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
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 9,horizontal: 30),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 3,
                              color: Color.fromRGBO(255, 255, 255, 1))),
                      labelText: "First Name",
                      floatingLabelBehavior: FloatingLabelBehavior.always),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: screenWidth * 0.08,
                    right: screenWidth * 0.08,
                    bottom: screenHeight * 0.029),
                child: const TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 9,horizontal: 30),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 3,
                              color: Color.fromRGBO(255, 255, 255, 1))),
                      labelText: "Last Name",
                      floatingLabelBehavior: FloatingLabelBehavior.always),
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.only(
              //       left: screenWidth * 0.08,
              //       right: screenWidth * 0.08,
              //       bottom: screenHeight * 0.019),
              //   child: GestureDetector(
              //     onTap: () {
              //       Navigator.pushNamed(context, '/dob');
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
