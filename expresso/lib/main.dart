
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
        
        theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      ),
    );
  }
}
