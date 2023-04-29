import 'package:flutter/material.dart';

import '../config/palette.dart';

class ManageOrder extends StatefulWidget {
  const ManageOrder({super.key});

  @override
  State<ManageOrder> createState() => _ManageOrderState();
}

class _ManageOrderState extends State<ManageOrder> {
  final List block = [
    "All",
    "A",
    "B",
    'BNX',
    "C",
    "D",
    "DNX",
    "F",
    "G",
    'H',
    'J',
    'K',
    'L',
    'M',
    'O',
    'P',
    'Q',
    'R'
  ];
  int selectedItemIndex = 0;
  final List temp = [];

  void _chooseBlock(int index) {
    setState(() {
      selectedItemIndex = index;
    });
  }
  // void _chooseItem(int index){
  //   setState(() {

  //   selectedButtonIndex=index;
  //   });

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
          style: TextStyle(color: kPrimaryColor),
        ),
        iconTheme: const IconThemeData(color: Color.fromRGBO(54, 115, 226, 1)),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: screenWidth * 0.042),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'SELECT BLOCK',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: screenHeight * 0.06,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: block.length,
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    // height: 700,
                    width: screenWidth * 0.15,
                    child: GestureDetector(
                      onTap: () => _chooseBlock(index),
                      child: Card(
                          child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                                color: index == selectedItemIndex
                                    ? Colors.black
                                    : Colors.grey,
                                width: index == selectedItemIndex ? 1 : 0)),
                        child: Center(
                            child: Text(
                          block[index],
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        )),
                      )),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.019),
              child: SizedBox(
                height: screenHeight * 0.76,
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(bottom: screenHeight * 0.023),
                            child: Container(
                                height: screenHeight * 0.09,
                                width: screenWidth * 0.6,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    border: Border.all(
                                        color: Colors.black, width: 1))),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: screenWidth * 0.04,
                              left: screenWidth * 0.01,
                            ),
                            child: const Text(
                              "NET MARGIN",
                              style: TextStyle(color: Colors.grey, fontSize: 8),
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                  height: screenHeight * 0.045,
                                  width: screenWidth * 0.17,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(
                                          color: Colors.black, width: 1))),
                              TextButton(
                                  onPressed: () {
                                    // _chooseBlock(index);
                                    setState(() {
                                      if (temp.contains(index)) {
                                        temp.remove(index);
                                      } else {
                                        temp.add(index);
                                        showModalBottomSheet(
                                            context: context,
                                            builder: (context) {
                                              return Container(
                                                height: 70,
                                                decoration: const BoxDecoration(
                                                    color: kPrimaryColor),
                                                child: TextButton(
                                                    onPressed: () {
                                                      Navigator.pushNamed(
                                                          context,
                                                          '/confirmorder');
                                                    },
                                                    child: const Text(
                                                      "CONFIRM YOUR ORDER",
                                                      style: TextStyle(
                                                          fontSize: 19,
                                                          color: Colors.white),
                                                    )),
                                              );
                                            });
                                      }
                                    });
                                  },
                                  child: temp.contains(index)
                                      ? Container(
                                          height: screenHeight * 0.045,
                                          width: screenWidth * 0.17,
                                          decoration: BoxDecoration(
                                            color: Colors.red,
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
                                            "REMOVE",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700),
                                          )),
                                        )
                                      : Container(
                                          height: screenHeight * 0.045,
                                          width: screenWidth * 0.17,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                              border: Border.all(
                                                  color: kPrimaryColor,
                                                  width: 2)),
                                          child: const Center(
                                              child: Text(
                                            "ADD+",
                                            style: TextStyle(
                                                color: kPrimaryColor,
                                                fontWeight: FontWeight.w700),
                                          )),
                                        )),
                            ],
                          )
                        ],
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
