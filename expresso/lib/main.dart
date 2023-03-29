import 'package:expresso/details_reg.dart';
import 'package:expresso/dob.dart';
import 'package:expresso/finallogin.dart';
import 'package:expresso/homescreens/homepage.dart';
import 'package:expresso/homescreens/manageorders.dart';
import 'package:expresso/homescreens/orderconfirm.dart';
import 'package:expresso/homescreens/ordersummary.dart';
import 'package:expresso/homescreens/profile.dart';
import 'package:expresso/loginPage.dart';
import 'package:expresso/pageview.dart';
import 'package:expresso/register.dart';
import 'package:expresso/register_ver.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';

void main() {
  // Get.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/signup': (context) => const Register(),
        '/signup_verif': (context) => const Verification(),
        '/details_verif': (context) => const DetailsVerif(),
        '/dob': (context) => const DOB(),
        '/finallog': (context) => const FinalLog(),
        '/pageview': (context) => const Pageview(),
        '/homepage': (context) => const HomePage(),
        '/profile': (context) => const Profile(),
        '/ordersum': (context) => const OrderSum(),
        '/manageorder':(context)=>const ManageOrder(),
        '/confirmorder':(context)=>const Confirmation()
      },
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
    );
  }
}
