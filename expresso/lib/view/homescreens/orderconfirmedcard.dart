import 'package:expresso/config/palette.dart';
import 'package:expresso/utils/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ConfirmedCard extends StatefulWidget {
  const ConfirmedCard({super.key});

  @override
  State<ConfirmedCard> createState() => _ConfirmedCardState();
}

class _ConfirmedCardState extends State<ConfirmedCard> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: screenHeight * 0.23),
                child: Container(
                  width: screenWidth * 0.76,
                  height: screenHeight * 0.29,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(8),
                      color: kPrimaryColor),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: screenHeight * 0.02),
                        child: Text(
                          "THANK YOU FOR YOUR ORDER",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: screenHeight * 0.05),
                        child: Icon(
                          Icons.circle_notifications_rounded,
                          size: 55,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: screenHeight * 0.04),
                        child: Text(
                          "Your Order is Confirmed!",
                          style: TextStyle(
                              color: Colors.yellow,
                              fontSize: 22,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Text(
                        "Your order will be delivered soon",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: screenHeight * 0.341),
                child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RoutesName.home);
                    },
                    child: Text(
                      "GO BACK TO HOME MENU",
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 15),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
