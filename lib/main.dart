import 'package:flutter/material.dart';
import 'package:vivriti_invester_ui/routes/routes.dart';
// import 'package:vivriti_invester_ui/screens/home.dart';


void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomeScreen(),
      initialRoute: '/home',
      onGenerateRoute: Routes.generateRoute,
    ),
  );
}
