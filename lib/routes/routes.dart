import 'package:flutter/material.dart';
import 'package:vivriti_invester_ui/screens/signup.dart';
import '/screens/home.dart';
import '/screens/login.dart';

class Routes{
  //Create route name after /
  //example: / should redirect to login, /home should redirect to home

  static Route<dynamic> generateRoute(RouteSettings routeSettings){
    switch(routeSettings.name){
      case '/log':
        return MaterialPageRoute(builder: (_)=> const LoginScreen());
      case '/home':
        return MaterialPageRoute(builder: (_)=> const HomeScreen());
        case '/sign':
        return MaterialPageRoute(builder: (_)=> const SignupScreen());
      default:
        return errorRoute();
    }
  }

  static Route<dynamic> errorRoute(){
    return MaterialPageRoute(builder: (_)=> const HomeScreen());
  }
}