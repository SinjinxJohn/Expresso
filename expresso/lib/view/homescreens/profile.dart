import 'package:expresso/config/palette.dart';
import 'package:expresso/utils/routes/routes_name.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    // Get.init();
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: kPrimaryColor),
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: EdgeInsets.only(
              left: screenWidth * 0.05, top: screenHeight * 0.07),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 90,
                width: 95,
                // color: kPrimaryColor,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: kPrimaryColor),
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: screenHeight * 0.04),
                child: const Text(
                  "SHAURYA SHARMA",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 19),
                ),
              ),
              Row(
                children: [
                  Column(
                    children: const [
                      Text("\$5.60",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 17,
                              color: kPriceColor)),
                      Text(
                        "EARNED CASH",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.14),
                    child: Column(
                      children: const [
                        Text("26",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 17,
                                color: kPrimaryColor)),
                        Text(
                          "YOUR ORDERS",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.13),
                    child: Column(
                      children: const [
                        Text("280",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 17,
                                color: kPrimaryColor)),
                        Text(
                          "YOUR DELIVERY",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: screenHeight * 0.035,
                  right: screenWidth * 0.06,
                  left: screenWidth * 0.01,
                ),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.black, width: 0)),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: screenHeight * 0.02,
                        bottom: screenHeight * 0.02,
                        left: screenWidth * 0.08),
                    child: Row(
                      children: [
                        const Text(
                          "Phone:",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w700),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: screenWidth * 0.11),
                          child: const Text(
                            "+91 XXXX-XXXXXX",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w700),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: screenHeight * 0.01,
                    right: screenWidth * 0.06,
                    left: screenWidth * 0.01),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.black, width: 0)),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: screenHeight * 0.02,
                        bottom: screenHeight * 0.02,
                        left: screenWidth * 0.08),
                    child: Row(
                      children: [
                        const Text(
                          "Email:",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w700),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: screenWidth * 0.11),
                          child: const Text(
                            "shauryathebest@gmail.com",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w700),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: screenHeight * 0.01,
                    right: screenWidth * 0.06,
                    left: screenWidth * 0.01),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.black, width: 0)),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: screenHeight * 0.02,
                        bottom: screenHeight * 0.02,
                        left: screenWidth * 0.08),
                    child: Row(
                      children: const [
                        Text(
                          "Help",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w700),
                        ),
                        // Padding(
                        //   padding: EdgeInsets.only(left:screenWidth*0.11),
                        //   child: Text("shauryathebest@gmail.com",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),),
                        // )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: screenHeight * 0.01,
                    right: screenWidth * 0.06,
                    left: screenWidth * 0.01),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.black, width: 0)),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: screenHeight * 0.02,
                        bottom: screenHeight * 0.02,
                        left: screenWidth * 0.08),
                    child: Row(
                      children: const [
                        Text(
                          "About Us",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w700),
                        ),
                        // Padding(
                        //   padding: EdgeInsets.only(left:screenWidth*0.11),
                        //   child: Text("shauryathebest@gmail.com",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),),
                        // )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: screenHeight * 0.01,
                    right: screenWidth * 0.06,
                    left: screenWidth * 0.01),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.black, width: 0)),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: screenHeight * 0.02,
                        bottom: screenHeight * 0.02,
                        left: screenWidth * 0.08),
                    child: Row(
                      children: const [
                        Text(
                          "Invite a Friend",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w700),
                        ),
                        // Padding(
                        //   padding: EdgeInsets.only(left:screenWidth*0.11),
                        //   child: Text("shauryathebest@gmail.com",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),),
                        // )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: screenHeight * 0.01,
                    right: screenWidth * 0.06,
                    left: screenWidth * 0.01),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.black, width: 0)),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: screenHeight * 0.02,
                        bottom: screenHeight * 0.02,
                        left: screenWidth * 0.08),
                    child: Row(
                      children: const [
                        Text(
                          "Terms and Conditions",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w700),
                        ),
                        // Padding(
                        //   padding: EdgeInsets.only(left:screenWidth*0.11),
                        //   child: Text("shauryathebest@gmail.com",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),),
                        // )
                      ],
                    ),
                  ),
                ),
              ),
              // GestureDetector(
              //   onTap: (){
              //     // Get.defaultDialog(
              //     //   title: "Are you sure you want to logout?",
              //     //   content: Container(),
              //     //   textConfirm: "Logout",
              //     //   confirmTextColor: kPrimaryColor,
              //     //   textCancel: "Cancel",
              //     //   cancelTextColor: Colors.red,
              //     //   onConfirm: (){
              //     //     Navigator.pushNamed(context,'/');
              //     //   },
              //     //   onCancel: (){
              //     //     Navigator.pop(context);
              //     //   }

              // );

              GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text("Are you sure you want to logout?"),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text(
                                  "Cancel",
                                  style: TextStyle(color: Colors.red),
                                )),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, RoutesName.Login);
                                },
                                child: const Text("Logout")),
                          ],
                        );
                      });
                },
                child: Padding(
                  padding: EdgeInsets.only(
                      top: screenHeight * 0.01,
                      right: screenWidth * 0.06,
                      left: screenWidth * 0.01),
                  child: Container(
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.black, width: 0)),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: screenHeight * 0.02,
                          bottom: screenHeight * 0.02,
                          left: screenWidth * 0.08),
                      child: Row(
                        children: const [
                          Text(
                            "Sign Out",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          // Padding(
                          //   padding: EdgeInsets.only(left:screenWidth*0.11),
                          //   child: Text("shauryathebest@gmail.com",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),),
                          // )
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              // TextButton(
              //   onPressed: (){
              //   // Get.defaultDialog(
              //   //     title: "Are you sure you want to logout?",
              //   //     content: Container(),
              //   //     textConfirm: "Logout",
              //   //     confirmTextColor: kPrimaryColor,
              //   //     textCancel: "Cancel",
              //   //     cancelTextColor: Colors.red,
              //   //     onConfirm: (){
              //   //       // Navigator.pushNamed(context,'/');
              //   //     },
              //   //     onCancel: (){
              //   //       // Navigator.pop(context);
              //   //     }

              //   //   );
              // }, child: Container(
              //   child: Padding(
              //     padding:  EdgeInsets.only(left:screenWidth*0.37,top: screenHeight*0.024,bottom: screenHeight*0.024,right: screenWidth*0.35),
              //     child: Text('Sign Out',style: TextStyle(color: Colors.white),),
              //   ),
              //   decoration: BoxDecoration(color: kPrimaryColor,borderRadius: BorderRadius.circular(8)),
              // )),

              //  Container(
              //     child: Padding(
              //       padding:  EdgeInsets.only(left:screenWidth*0.37,top: screenHeight*0.024,bottom: screenHeight*0.024,right: screenWidth*0.35),
              //       child: Text('Sign Out',style: TextStyle(color: Colors.white),),
              //     ),
              //     decoration: BoxDecoration(color: kPrimaryColor,borderRadius: BorderRadius.circular(8)),
              //   )
            ],
          ),
        ),
      ),
    );
  }
}
