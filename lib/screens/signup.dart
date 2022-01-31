import 'package:flutter/material.dart';
import 'package:vivriti_invester_ui/models/signupform.dart';
import 'package:vivriti_invester_ui/widgets/button.dart';
import 'package:vivriti_invester_ui/widgets/custom_button_signin.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({ Key? key }) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();

   final TextEditingController _phoneNumberTextController = TextEditingController();
   final TextEditingController _emailTextController = TextEditingController();
   final TextEditingController _panNumberTextController = TextEditingController();

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
                SizedBox(height: 40,),
                CustomButtonsSignin(text1: 'Signup', route: '/sign', widthSize: 140, heightSize: 50, text2: 'Login', dheightSize: 60, dwidthSize: 253, centerWidthSize: 37, firstWidthSize: 22, route1: '/log',),
                 const SizedBox(height: 50,),
                Column(
                  children: [
                    SizedBox(
                      height: 300,
                      width: 400,
                      child: SignupForm(formKey: _formKey, phoneNumberTextController: _phoneNumberTextController, emailTextController: _emailTextController, panNumberTextController: _panNumberTextController),
                    ),
                    const Button(text: 'Next', route: '/phnotp',),
                    
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