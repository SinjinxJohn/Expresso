// import 'package:expresso/details_reg.dart';
// import 'package:expresso/dob.dart';
// import 'package:expresso/finallogin.dart';
// import 'package:expresso/view/homescreens/confirmdetails.dart';
// import 'package:expresso/view/homescreens/deliveryconfirm.dart';
// import 'package:expresso/view/homescreens/homepage.dart';
// import 'package:expresso/view/homescreens/manageorders.dart';
// import 'package:expresso/view/homescreens/orderconfirm.dart';
// import 'package:expresso/view/homescreens/orderconfirmedcard.dart';
// import 'package:expresso/view/homescreens/ordersummary.dart';
// import 'package:expresso/view/homescreens/profile.dart';
// import 'package:expresso/loginPage.dart';
// import 'package:expresso/pageview.dart';
// import 'package:expresso/register.dart';
// import 'package:expresso/register_ver.dart';
import 'package:expresso/utils/routes/routes.dart';
import 'package:expresso/utils/routes/routes_name.dart';
import 'package:expresso/view_model/auth_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  // Get.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_)=>AuthViewModel())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: RoutesName.Login,
        onGenerateRoute: Routes.generateRoutes,
        // routes: {
        //   '/': (context) => const LoginPage(),
        //   '/signup': (context) => const Register(),
        //   '/signup_verif': (context) => const Verification(),
        //   '/details_verif': (context) => const DetailsVerif(),
        //   '/dob': (context) => const DOB(),
        //   '/finallog': (context) => const FinalLog(),
        //   '/pageview': (context) => const Pageview(),
        //   '/homepage': (context) => const HomePage(),
        //   '/profile': (context) => const Profile(),
        //   '/ordersum': (context) => const OrderSum(),
        //   '/manageorder': (context) => const ManageOrder(),
        //   '/confirmorder': (context) => const Confirmation(),
        //   '/orderconfirmdetails': (context) => const ConfrimDetails(),
        //   '/confirmordercard': (context) => const ConfirmedCard(),
        //   '/deliveryconfirmed': (context) => const DeliveryConfirm(),
        // },
        theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      ),
    );
  }
}
