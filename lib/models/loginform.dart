import 'package:flutter/material.dart';
import 'package:vivriti_invester_ui/widgets/buildinputdecoration.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
    required GlobalKey<FormState> formKey,
    required TextEditingController phoneNumberTextController,
    required TextEditingController emailTextController,
  }) : _formKey = formKey, _phoneNumberTextController = phoneNumberTextController, _emailTextController = emailTextController, super(key: key);

  final GlobalKey<FormState> _formKey;
  final TextEditingController _phoneNumberTextController;
  final TextEditingController _emailTextController;

  @override
  Widget build(BuildContext context) {
    return Form(key: _formKey, child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  controller: _phoneNumberTextController,      
                  decoration: buildInputDecoration(hintText: 'Phone', individualIcon: const Icon(Icons.phone_android)) ,
                ),
              ),
              const Text('Or', style: TextStyle(fontSize: 16),),
             Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  controller: _emailTextController, 
                  decoration: buildInputDecoration(hintText: 'E -Mail', individualIcon: const Icon(Icons.email)) ,     
                ),
              ),
            ],
          ), 
          );
  }
}