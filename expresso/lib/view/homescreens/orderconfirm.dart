import 'package:expresso/utils/routes/routes_name.dart';
import 'package:flutter/material.dart';

import '../../config/palette.dart';

class Confirmation extends StatefulWidget {
  const Confirmation({super.key});

  @override
  State<Confirmation> createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
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
              const Text(
                "You have 90 seconds to confirm all orders you chose",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: screenHeight * 0.8,
                child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (BuildContext contex, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,

                            children: [
                              Container(
                                height: 150,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: screenWidth * 0.02,
                                        right: screenWidth * 0.03),
                                    child: TextButton(
                                        onPressed: () {},
                                        child: Container(
                                          height: screenHeight * 0.045,
                                          width: screenWidth * 0.3,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            border: Border.all(
                                                color: Colors.red, width: 2),
                                            // boxShadow: [BoxShadow(
                                            //   offset: 1

                                            // )]
                                          ),
                                          child: const Center(
                                              child: Text(
                                            "CANCEL",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontWeight: FontWeight.w700),
                                          )),
                                        )),
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pushNamed(context,
                                            RoutesName.confirmOrderDetails);
                                      },
                                      child: Container(
                                        height: screenHeight * 0.045,
                                        width: screenWidth * 0.42,
                                        decoration: BoxDecoration(
                                          color: kPriceColor,
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          border: Border.all(
                                              color: kPriceColor, width: 2),
                                          // boxShadow: [BoxShadow(
                                          //   offset: 1

                                          // )]
                                        ),
                                        child: const Center(
                                            child: Text(
                                          "ACCEPT DELIVERY",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700),
                                        )),
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
