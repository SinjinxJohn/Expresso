// import 'package:expresso/finallogin.dart';
import 'package:expresso/view/homescreens/confirmdetails.dart';
import 'package:expresso/view/homescreens/deliveryconfirm.dart';
import 'package:expresso/view/homescreens/homepage.dart';
// import 'package:expresso/loginPage.dart';
// import 'package:expresso/pageview.dart';
// import 'package:expresso/register.dart';
import 'package:expresso/utils/routes/routes_name.dart';
import 'package:expresso/view/homescreens/manageorders.dart';
import 'package:expresso/view/homescreens/orderconfirm.dart';
import 'package:expresso/view/homescreens/orderconfirmedcard.dart';
import 'package:expresso/view/homescreens/ordersummary.dart';
import 'package:expresso/view/homescreens/profile.dart';
import 'package:flutter/material.dart';

import '../../view/loginPages/finallogin.dart';
import '../../view/loginPages/loginPage.dart';
import '../../view/loginPages/pageview.dart';
import '../../view/loginPages/register.dart';

class Routes {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.Login:
        return MaterialPageRoute(builder: ((context) => const LoginPage()));
      case RoutesName.register:
        return MaterialPageRoute(builder: ((context) => const Register()));
      case RoutesName.home:
        return MaterialPageRoute(builder: ((context) => const HomePage()));
      case RoutesName.pageview:
        return MaterialPageRoute(builder: ((context) => const Pageview()));
      case RoutesName.finalLog:
        return MaterialPageRoute(builder: ((context) => const FinalLog()));
      case RoutesName.profile:
        return MaterialPageRoute(builder: ((context) => const Profile()));
      case RoutesName.manageorders:
        return MaterialPageRoute(builder: ((context) => const ManageOrder()));
      case RoutesName.ordersum:
        return MaterialPageRoute(builder: ((context) => const OrderSum()));
      case RoutesName.confirmcard:
        return MaterialPageRoute(builder: ((context) => const ConfirmedCard()));
      case RoutesName.confirmOrder:
        return MaterialPageRoute(builder: ((context) => const Confirmation()));
      case RoutesName.confirmOrderDetails:
        return MaterialPageRoute(
            builder: ((context) => const ConfrimDetails()));
      case RoutesName.deliveryConfirmed:
        return MaterialPageRoute(
            builder: ((context) => const DeliveryConfirm()));
      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(child: Text("No route defined")),
          );
        });
    }
  }
}
