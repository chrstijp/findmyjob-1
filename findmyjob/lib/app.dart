import 'package:findmyjob/views/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:findmyjob/routes.dart';
import 'package:findmyjob/theme.dart';
import 'package:findmyjob/views/screens/base_nav_screen.dart';
import 'package:findmyjob/views/screens/login_screen.dart';
import 'package:findmyjob/views/screens/my_profile_screen.dart';
import 'package:findmyjob/views/screens/signup_screen.dart';

class findmyjobApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'findmyjob',
        theme: theme(),
        routes: routes,
        debugShowCheckedModeBanner: false,
        home: SplashScreen() //BaseNavScreen(),
        // home: BaseNavScreen() //BaseNavScreen(),
        // initialRoute: MyProfileScreen.route,
        );
  }
}
