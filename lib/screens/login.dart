import 'package:flutter/material.dart';
import 'package:vivriti_invester_ui/models/loginform.dart';
import 'package:vivriti_invester_ui/widgets/button.dart';
import 'package:vivriti_invester_ui/widgets/custom_buttons.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _formKey = GlobalKey<FormState>();

   final TextEditingController _phoneNumberTextController = TextEditingController();
   final TextEditingController _emailTextController = TextEditingController();
  @override
  void initState() => super.initState();

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Align(
            alignment: Alignment.topCenter,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/Vivriti logo.png', height: 50, width: 150,),
                const SizedBox(height: 60,),
                CustomButtons(text1: 'Login', route: '', widthSize: 140, heightSize: 50, text2: 'Sign up', dheightSize: 60, dwidthSize: 253, centerWidthSize: 20, lastWidthSize: 22, route1: '/sign',),
                 const SizedBox(height: 80,),
                Column(
                  children: [
                    SizedBox(
                      height: 250,
                      width: 400,
                      child: LoginForm(formKey: _formKey, phoneNumberTextController: _phoneNumberTextController, emailTextController: _emailTextController, ),
                    ),
                    const Button(text: 'Login', route: '/phnotp',),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  }

