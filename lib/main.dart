import 'package:flutter/material.dart';
import 'package:vivriti_invester_ui/routes/routes.dart';
import 'package:vivriti_invester_ui/screens/distrubuter_rm_screen.dart';
import 'package:vivriti_invester_ui/screens/phone_otp_page.dart';
// import 'package:vivriti_invester_ui/screens/home.dart';


void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: DistrubutorRMScreen(),
      initialRoute: '/home',
      onGenerateRoute: Routes.generateRoute,
    ),
  );
}
