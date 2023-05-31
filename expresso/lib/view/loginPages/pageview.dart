// import 'package:expresso/details_reg.dart';
// import 'package:expresso/dob.dart';
// import 'package:expresso/register.dart';
// import 'package:expresso/register_ver.dart';
import 'package:expresso/config/palette.dart';
import 'package:expresso/utils/routes/routes_name.dart';
import 'package:expresso/view/loginPages/register.dart';
import 'package:expresso/view/loginPages/register_ver.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'details_reg.dart';
import 'dob.dart';

class Pageview extends StatefulWidget {
  const Pageview({super.key});

  @override
  State<Pageview> createState() => _PageviewState();
}

class _PageviewState extends State<Pageview> {
  final PageController _controller = PageController();
  var selectedIndex = 0;
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Column(children: [
      Expanded(
        child: PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 3);
            });
          },
          children: const [Register(), Verification(), DetailsVerif(), DOB()],
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      SmoothPageIndicator(
        controller: _controller,
        effect: const SlideEffect(
          dotHeight: 13,
          dotWidth: 13,
          activeDotColor: kPrimaryColor,
          
        ),
      
        count: 4,
        
      ),

      Padding(
        padding: EdgeInsets.only(
            top: screenHeight * 0.022,
            left: screenWidth * 0.08,
            right: screenWidth * 0.08,
            bottom: screenHeight * 0.019),
        child: GestureDetector(
          onTap: () {
            onLastPage
                ?
                //  _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                Navigator.pushNamed(context, RoutesName.finalLog)
                : _controller.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn);
          },
          child: Container(
            decoration: BoxDecoration(
                color: const Color.fromRGBO(54, 115, 226, 1),
                borderRadius: BorderRadius.circular(5)),
            height: screenHeight * 0.05,
            width: screenWidth * 0.84,
            child: Center(
                child: onLastPage
                    ? const Text(
                        "Done",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      )
                    : const Text(
                        "Next",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      )),
          ),
        ),
      )
      //  :
      //  Padding(
      //    padding: EdgeInsets.only(
      //      top: screenHeight*0.022,
      //        left: screenWidth * 0.08,
      //        right: screenWidth * 0.08,
      //        bottom: screenHeight * 0.019),
      //    child: GestureDetector(
      //      onTap: () {
      //        _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
      //       //  Navigator.pushNamed(context, '/finallog');
      //      },
      //      child: Container(
      //        decoration: BoxDecoration(
      //            color: Color.fromRGBO(54, 115, 226, 1),
      //            borderRadius: BorderRadius.circular(5)),
      //        height: screenHeight * 0.05,
      //        width: screenWidth * 0.84,
      //        child: const Center(
      //            child: Text(
      //          "Next",
      //          style: TextStyle(
      //              color: Colors.white,
      //              fontSize: 15,
      //              fontWeight: FontWeight.w700),
      //        )),
      //      ),
      //    ),
      //  )
    ]));
  }
}
