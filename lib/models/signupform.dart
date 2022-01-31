import 'package:flutter/material.dart';
import 'package:vivriti_invester_ui/widgets/buildinputdecoration.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    Key? key,
    required GlobalKey<FormState> formKey,
    required TextEditingController phoneNumberTextController,
    required TextEditingController emailTextController,
    required TextEditingController panNumberTextController,
  }) : _formKey = formKey, _phoneNumberTextController = phoneNumberTextController, _emailTextController = emailTextController, _panNumberTextController = panNumberTextController, super(key: key);

  final GlobalKey<FormState> _formKey;
  final TextEditingController _phoneNumberTextController;
  final TextEditingController _emailTextController;
  final TextEditingController _panNumberTextController;

  @override
  Widget build(BuildContext context) {
    return Form(key: _formKey, child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  controller: _phoneNumberTextController,      
                  decoration: buildInputDecoration(hintText: 'Phone', individualIcon: Icon(Icons.phone_android)) ,
                ),
              ),
             Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  controller: _emailTextController, 
                  decoration: buildInputDecoration(hintText: 'E -Mail', individualIcon: Icon(Icons.email)) ,     
                ),
              ),
               Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  controller: _panNumberTextController,  
                  decoration: buildInputDecoration(hintText: 'PAN Number', individualIcon: Icon(Icons.credit_card)) ,    
                ),
              ), 
            ],
          ), 
          );
  }
}