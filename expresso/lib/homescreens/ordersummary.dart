import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../config/palette.dart';

class OrderSum extends StatefulWidget {
  const OrderSum({super.key});

  @override
  State<OrderSum> createState() => _OrderSumState();
}

class _OrderSumState extends State<OrderSum> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text(
                "ORDER SUMMARY",
                style: TextStyle(color: kPrimaryColor),
              ),
              iconTheme:
                  const IconThemeData(color: Color.fromRGBO(54, 115, 226, 1)),
              backgroundColor: Colors.white,
            ),
            body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
              // Row(
              //   children: [
              //     Padding(
              //       padding: EdgeInsets.only(
              //           left: screenWidth * 0.027, top: screenHeight * 0.02),
              //       child: IconButton(
              //           onPressed: () {

              //           },
              //           icon: Image.asset(
              //             "assets/menu.png",
              //             color: kPrimaryColor,
              //           )),
              //     ),
              //     Padding(
              //       padding: EdgeInsets.only(
              //           left: screenWidth * 0.70, top: screenHeight * 0.02),
              //       child: IconButton(
              //           onPressed: () {},
              //           icon: Image.asset(
              //             "assets/account.png",
              //             color: kPrimaryColor,
              //           )),
              //     ),
              //   ],
              // ),
              Padding(
                padding: EdgeInsets.only(
                    top: screenHeight * 0.03,
                    left: screenWidth * 0.07,
                    right: screenWidth * 0.07),
                child: Container(
                  height: screenHeight * 0.5,
                  width: screenWidth * 1.46,
                  decoration: BoxDecoration(
                      border: Border.all(color: kPrimaryColor, width: 0.8),
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: screenWidth * 0.05,
                                top: screenHeight * 0.03),
                            child: const Text(
                              "PRODUCT NAME",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: screenWidth * 0.33,
                                top: screenHeight * 0.03),
                            child: const Text("PRICE",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w700)),
                          )
                        ],
                      ),
                      //add the product name and price here
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: screenHeight * 0.03,
                    left: screenWidth * 0.07,
                    right: screenWidth * 0.07),
                child: Container(
                  height: screenHeight * 0.28,
                  width: screenWidth * 1.46,
                  decoration: BoxDecoration(
                      border: Border.all(color: kPrimaryColor, width: 0.8),
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: screenWidth * 0.05, top: screenHeight * 0.03),
                        child: const Text(
                          "Price Details",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: screenWidth * 0.12,
                                top: screenHeight * 0.03),
                            child: const Text(
                              "Price",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: screenWidth * 0.43,
                                top: screenHeight * 0.03),
                            child: const Text("\$ 320",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w700)),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: screenWidth * 0.12,
                                top: screenHeight * 0.01),
                            child: const Text(
                              "Discount",
                              style: TextStyle(
                                  color: kPriceColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: screenWidth * 0.37,
                                top: screenHeight * 0.01),
                            child: const Text("\$ 320",
                                style: TextStyle(
                                    color: kPriceColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700)),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: screenWidth * 0.12,
                                top: screenHeight * 0.01),
                            child: const Text(
                              "Delivery",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: screenWidth * 0.38,
                                top: screenHeight * 0.01),
                            child: const Text("\$ 320",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w700)),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: screenWidth * 0.12,
                                top: screenHeight * 0.04),
                            child: const Text(
                              "Total Amount",
                              style: TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: screenWidth * 0.29,
                                top: screenHeight * 0.04),
                            child: const Text("\$ 320",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w700)),
                          )
                        ],
                      ),
                      //add the product name and price here
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: screenHeight * 0.03,
                    left: screenWidth * 0.07,
                    right: screenWidth * 0.07),
                child: Container(
                  height: screenHeight * 0.23,
                  width: screenWidth * 1.46,
                  decoration: BoxDecoration(
                      border: Border.all(color: kPrimaryColor, width: 0.8),
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: screenWidth * 0.05, top: screenHeight * 0.03),
                        child: const Text(
                          "DELIVER TO",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: screenWidth * 0.05, top: screenHeight * 0.03),
                        child: const Text(
                          "Shaurya Sharma",
                          style: TextStyle(
                              // color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                      ),

                      // Row(
                      //   children: [
                      //     Padding(
                      //       padding: EdgeInsets.only(
                      //           left: screenWidth * 0.12,
                      //           top: screenHeight * 0.01),
                      //       child: const Text(
                      //         "Discount",
                      //         style: TextStyle(
                      //           color: kPriceColor,
                      //             fontSize: 15, fontWeight: FontWeight.w700),
                      //       ),
                      //     ),
                      //     Padding(
                      //       padding: EdgeInsets.only(
                      //           left: screenWidth * 0.37,
                      //           top: screenHeight * 0.01),
                      //       child: const Text("\$ 320",
                      //           style: TextStyle(
                      //             color: kPriceColor,
                      //               fontSize: 15, fontWeight: FontWeight.w700)),
                      //     )
                      //   ],
                      // ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: screenWidth * 0.05, top: screenHeight * 0.01),
                        child: const Text(
                          "+91-xxxxxxxx",
                          style: TextStyle(
                              // color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      // Padding(
                      //   padding: EdgeInsets.only(
                      //       left: screenWidth * 0.38,
                      //       top: screenHeight * 0.01),
                      //   child: const Text("\$ 320",
                      //       style: TextStyle(
                      //           fontSize: 15, fontWeight: FontWeight.w700)),
                      // ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: screenWidth * 0.05,
                                top: screenHeight * 0.04),
                            child: const Text(
                              "BLOCK F",
                              style: TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: screenWidth * 0.09,
                                top: screenHeight * 0.04),
                            child: const Text("ROOM NO 315",
                                style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700)),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: screenWidth * 0.1, 
                    top: screenHeight * 0.02),
                child: const Text(
                  "DELIVERY INSTRUCTIONS",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                ),
              ),
              //add the instructions here
              Padding(
                padding: EdgeInsets.only(
                    top: screenHeight * 0.15,
                    left: screenWidth * 0.08,
                    right: screenWidth * 0.08,
                    bottom: screenHeight * 0.019),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(54, 115, 226, 1),
                        borderRadius: BorderRadius.circular(5)),
                    height: screenHeight * 0.05,
                    width: screenWidth * 0.84,
                    child: const Center(
                        child: Text(
                      "PLACE ORDER",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                    )),
                  ),
                ),
              ),
            ]))));
    ;
  }
}
