import 'package:expresso/utils/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../config/palette.dart';

class ConfrimDetails extends StatefulWidget {
  const ConfrimDetails({super.key});

  @override
  State<ConfrimDetails> createState() => _ConfrimDetailsState();
}

class _ConfrimDetailsState extends State<ConfrimDetails> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text(
            "MANAGE ORDERS",
            style: TextStyle(color: kPriceColor),
          ),
          iconTheme: const IconThemeData(color: kPriceColor),
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: EdgeInsets.only(
              top: screenHeight * 0.06,
              left: screenWidth * 0.05,
              right: screenWidth * 0.045),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // const Text("You have 90 seconds to confirm all orders you chose",style: TextStyle(fontWeight: FontWeight.w700),),
              // SizedBox(
              //   height: screenHeight*0.8,
              //   child: ListView.builder(
              //     itemCount: 2,
              //     itemBuilder: (BuildContext contex,int index){
              //     return Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: Container(
              //         decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(8),

              //           border: Border.all(color: Colors.grey),

              //         ),
              //         child: Column(
              //           // mainAxisAlignment: MainAxisAlignment.center,
              //           crossAxisAlignment: CrossAxisAlignment.center,

              //           children: [
              //             Container(
              //               height: 150,
              //             ),
              //             Row(children: [
              //               Padding(
              //                 padding:  EdgeInsets.only(left:screenWidth*0.02,right: screenWidth*0.03),
              //                 child: TextButton(onPressed: (){}, child:  Container(
              //                     height: screenHeight*0.045,
              //                     width: screenWidth*0.3,
              //                     decoration: BoxDecoration(
              //                       color: Colors.white,
              //                           borderRadius: BorderRadius.circular(4),
              //                           border: Border.all(color:
              //                           Colors.red,width: 2),
              //                           // boxShadow: [BoxShadow(
              //                           //   offset: 1

              //                           // )]
              //                   ),
              //                   child: const Center(child: Text("CANCEL",style: TextStyle(color: Colors.red,fontWeight: FontWeight.w700),)),
              //                   )),
              //               ),
              //                 TextButton(onPressed: (){
              //                   Navigator.pushNamed(context,"/orderconfirmdetails");
              //                 }, child: Container(
              //                   height: screenHeight*0.045,
              //                   width: screenWidth*0.42,
              //                   decoration: BoxDecoration(
              //                     color: kPriceColor,
              //                         borderRadius: BorderRadius.circular(4),
              //                         border: Border.all(color:
              //                         kPriceColor,width: 2),
              //                         // boxShadow: [BoxShadow(
              //                         //   offset: 1

              //                         // )]
              //                 ),
              //                 child: const Center(child: Text("ACCEPT DELIVERY",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),)),
              //                 ))
              //             ],)
              //           ],

              //         ),
              //       ),
              //     );

              //   }),
              // )
              Padding(
                padding: EdgeInsets.only(
                    // top: screenHeight * 0.01,
                    // left: screenWidth * 0.04,
                    // right: screenWidth * 0.04
                    ),
                child: Container(
                  height: screenHeight * 0.36,
                  width: screenWidth * 0.86,
                  decoration: BoxDecoration(
                      border: Border.all(color: kPrimaryColor, width: 2),
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Padding(
                      //   padding: EdgeInsets.only(
                      //       left: screenWidth * 0.02,
                      //       top: screenHeight * 0.009),
                      //   child: const Text(
                      //     "ORDER DETAILS",
                      //     style: TextStyle(
                      //         fontSize: 23,
                      //         color: Colors.black,
                      //         fontWeight: FontWeight.w700),
                      //   ),
                      // ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: screenWidth * 0.05,
                                top: screenHeight * 0.02),
                            child: const Text(
                              "PRODUCT NAME",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: screenWidth * 0.4,
                                top: screenHeight * 0.02),
                            child: const Text("PRICE",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w700)),
                          )
                        ],
                      ),
                      //add the product name and price here
                      Padding(
                        padding: EdgeInsets.only(
                            left: screenWidth * 0.05,
                            top: screenHeight * 0.2,
                            bottom: screenHeight * 0.02),
                        child: const Text(
                          "INSTRUCTIONS",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w700),
                        ),
                      ),
                      DotWidget(
                        dashColor: kPrimaryColor,
                        dashHeight: 3,
                        dashWidth: 8,
                        totalWidth: screenWidth * 0.85,
                      ),

                      Padding(
                        padding: EdgeInsets.only(
                            left: screenWidth * 0.05, top: screenHeight * 0.02),
                        child: Text(
                          "Total Amount: ₹370",
                          style: TextStyle(
                              fontSize: 17,
                              color: kPriceColor,
                              fontWeight: FontWeight.w700),
                        ),
                      )
                      //add the instructions here
                      // Padding(
                      //   padding: EdgeInsets.only(
                      //       top: screenHeight * 0.13,
                      //       left: screenWidth * 0.08,
                      //       right: screenWidth * 0.08,
                      //       bottom: screenHeight * 0.019),
                      //   child: GestureDetector(
                      //     onTap: () {},
                      //     child: Container(
                      //       decoration: BoxDecoration(
                      //           color: const Color.fromRGBO(54, 115, 226, 1),
                      //           borderRadius: BorderRadius.circular(5)),
                      //       height: screenHeight * 0.05,
                      //       width: screenWidth * 0.84,
                      //       child: const Center(
                      //           child: Text(
                      //         "ADD TO CART",
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
              Padding(
                padding: EdgeInsets.only(top: screenHeight * 0.02),
                child: Container(
                  width: screenWidth * 0.86,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: kPrimaryColor, width: 2)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: screenHeight * 0.009,
                                left: screenWidth * 0.03),
                            child: Text(
                              "Consumer name:",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: screenHeight * 0.009,
                            ),
                            child: Text(
                              "Shaurya Sharma",
                              style: TextStyle(
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.w700),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: screenHeight * 0.01),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: screenWidth * 0.03,
                                  bottom: screenHeight * 0.02),
                              child: Text(
                                "Address:",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(bottom: screenHeight * 0.02),
                              child: Text(
                                "315 ,F Block Men's Hostel , VIT Vellore",
                                style: TextStyle(
                                    color: kPrimaryColor,
                                    fontWeight: FontWeight.w700),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: screenHeight * 0.01),
                        child: Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(
                                    left: screenWidth * 0.13,
                                    bottom: screenHeight * 0.02),
                                child: TextButton.icon(
                                  icon: Icon(
                                    Icons.call,
                                    color: kPrimaryColor,
                                  ),
                                  onPressed: () {},
                                  label: Text(
                                    "Call",
                                    style: TextStyle(
                                        fontSize: 15, color: kPrimaryColor),
                                  ),
                                )),
                            Padding(
                                padding: EdgeInsets.only(
                                    right: screenWidth * 0.13,
                                    left: screenWidth * 0.16,
                                    bottom: screenHeight * 0.02),
                                child: TextButton.icon(
                                  icon: Icon(
                                    Icons.chat,
                                    color: kPrimaryColor,
                                  ),
                                  onPressed: () {},
                                  label: Text(
                                    "Chat",
                                    style: TextStyle(
                                        fontSize: 15, color: kPrimaryColor),
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: screenHeight * 0.01),
                child: Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(
                            // left: screenWidth * 0.13,
                            bottom: screenHeight * 0.02),
                        child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, RoutesName.deliveryConfirmed);
                            },
                            child: Container(
                              height: screenHeight * 0.045,
                              width: screenWidth * 0.37,
                              decoration: BoxDecoration(
                                color: kPriceColor,
                                borderRadius: BorderRadius.circular(4),
                                border:
                                    Border.all(color: kPriceColor, width: 2),
                                // boxShadow: [BoxShadow(
                                //   offset: 1

                                // )]
                              ),
                              child: const Center(
                                  child: Text(
                                "Confirm pick up",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              )),
                            ))),
                    Padding(
                        padding: EdgeInsets.only(
                            right: screenWidth * 0.016,
                            left: screenWidth * 0.035,
                            bottom: screenHeight * 0.02),
                        child: TextButton(
                            onPressed: () {},
                            child: Container(
                              height: screenHeight * 0.045,
                              width: screenWidth * 0.4,
                              decoration: BoxDecoration(
                                color: kPrimaryColor,
                                borderRadius: BorderRadius.circular(4),
                                border:
                                    Border.all(color: kPrimaryColor, width: 2),
                                // boxShadow: [BoxShadow(
                                //   offset: 1

                                // )]
                              ),
                              child: const Center(
                                  child: Text(
                                "On the way",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              )),
                            ))),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DotWidget extends StatelessWidget {
  final double totalWidth, dashWidth, emptyWidth, dashHeight;

  final Color dashColor;

  const DotWidget({
    this.totalWidth = 300,
    this.dashWidth = 10,
    this.emptyWidth = 5,
    this.dashHeight = 2,
    this.dashColor = Colors.black,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        totalWidth ~/ (dashWidth + emptyWidth),
        (_) => Container(
          width: dashWidth,
          height: dashHeight,
          color: dashColor,
          margin: EdgeInsets.only(left: emptyWidth / 2, right: emptyWidth / 2),
        ),
      ),
    );
  }
}
