import 'package:expresso/config/palette.dart';
import 'package:expresso/utils/routes/routes_name.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme:
              const IconThemeData(color: Color.fromRGBO(54, 115, 226, 1)),
          backgroundColor: Colors.white,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 7),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, RoutesName.profile);
                },
                child: Image.asset(
                  "assets/account.png",
                  height: 33.67,
                  width: 33.67,
                  color: kPrimaryColor,
                ),
              ),
            )
          ],
        ),
        drawer: Drawer(
            backgroundColor: kPrimaryColor,
            child: ListView(

                // Important: Remove any padding from the ListView.
                padding: EdgeInsets.zero,
                children: [
                  DrawerHeader(
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(54, 115, 226, 1),
                    ),
                    child: Center(
                      child: Image.asset(
                        "assets/account.png",
                        height: screenHeight * 0.1,
                        width: screenWidth * 0.2,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  // ListTile(
                  //   leading: Image.asset(
                  //     "/home/sinjin/ecommerce/frontend/assets/icons8-shopping-cart-24.png",
                  //     height: SizeConfig.defaultSize * 2.4,
                  //     color: Colors.black,
                  //   ),
                  //   title: Text(
                  //     "Cart",
                  //     style: TextStyle(fontSize: SizeConfig.defaultSize * 1.2),
                  //   ),
                  //   onTap: () {
                  //     Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //             builder: ((context) => CartScreen())));
                  //     // Get.to(()=>CartPage());
                  //   },
                  // ),

                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.101),
                    child: ListTile(
                      title: const Text(
                        'CONSUMER',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: kButtonTextColor),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.101),
                    child: ListTile(
                      title: const Text('SHIPPER',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: kButtonTextColor)),
                      onTap: () {
                        Navigator.pushNamed(context, RoutesName.manageorders);
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.101),
                    child: ListTile(
                      title: const Text('ABOUT',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: kButtonTextColor)),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.101),
                    child: ListTile(
                      title: const Text('CONTACT US',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: kButtonTextColor)),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ])),
        body: Column(
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
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, RoutesName.ordersum);
              },
              child: Padding(
                padding: EdgeInsets.only(
                    top: screenHeight * 0.03,
                    left: screenWidth * 0.07,
                    right: screenWidth * 0.07),
                child: Container(
                  height: screenHeight * 0.83,
                  width: screenWidth * 1.46,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          offset: const Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        )
                      ],
                      border: Border.all(color: kPrimaryColor, width: 2),
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: screenWidth * 0.02,
                            top: screenHeight * 0.009),
                        child: const Text(
                          "ORDER DETAILS",
                          style: TextStyle(
                              fontSize: 23,
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: screenWidth * 0.05,
                                top: screenHeight * 0.07),
                            child: const Text(
                              "PRODUCT NAME",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: screenWidth * 0.33,
                                top: screenHeight * 0.07),
                            child: const Text("PRICE",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w700)),
                          )
                        ],
                      ),
                      //add the product name and price here
                      Padding(
                        padding: EdgeInsets.only(
                            left: screenWidth * 0.05, top: screenHeight * 0.4),
                        child: const Text(
                          "OTHER INSTRUCTIONS",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w700),
                        ),
                      ),
                      //add the instructions here
                      Padding(
                        padding: EdgeInsets.only(
                            top: screenHeight * 0.183,
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
                              "ADD TO CART",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700),
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
