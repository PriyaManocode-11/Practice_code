import 'package:flutter/material.dart';
import 'package:vivriti_invester_ui/models/loginform.dart';
import 'package:vivriti_invester_ui/widgets/buttons.dart';

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
  void initState() {
    // TODO: implement initState
    super.initState();
  }

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
                Align(
                  child: Container(
                    height: 52,
                        width: 230,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          border: Border.all(
                        color: Colors.blue.shade800,
                        width: 1,
                      )),
                    child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            
                             RaisedButton(
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
                            color: Colors.blue.shade800,
                            child: Text('Login',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, )),
                            textColor: Colors.white,
                            padding: EdgeInsets.symmetric(horizontal: 55.0, vertical: 20.0),
                            onPressed: () {
                              
                            }
                          ),
                          
                           OutlinedButton(
                             style: OutlinedButton.styleFrom(
                              shape: StadiumBorder(),
                              side: BorderSide(width: 1,color: Colors.transparent), 
                            ),
                            onPressed: () {
                              Navigator.of(context).pushNamed(
                         '/sign', 
                        );
                            }, child:  Text('Sign up',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.blue.shade800)),),
                        ]   
                    ),
                  ),
                ),
                 SizedBox(height: 50,),
                Column(
                  children: [
                    SizedBox(
                      height: 250,
                      width: 400,
                      child: LoginForm(formKey: _formKey, phoneNumberTextController: _phoneNumberTextController, emailTextController: _emailTextController, ),
                    ),
                    Button(buttonText: 'Login'),
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

