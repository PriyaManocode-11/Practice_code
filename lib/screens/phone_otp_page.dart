import 'package:flutter/material.dart';
import 'package:vivriti_invester_ui/widgets/button.dart';

class PhoneOtpScreen extends StatefulWidget {
  const PhoneOtpScreen({ Key? key }) : super(key: key);

  @override
  State<PhoneOtpScreen> createState() => _PhoneOtpScreenState();

}

class _PhoneOtpScreenState extends State<PhoneOtpScreen> {
  final _formKey = GlobalKey<FormState>();

   final TextEditingController _phoneOtpPinTextController = TextEditingController();

   @override
  void initState() => super.initState();


  @override
  Widget build(BuildContext context) {
    var text2 = const Text('Enter Your 4 digit OTP ', style: TextStyle(color: Colors.black26, fontSize: 18, fontWeight: FontWeight.w800,),);
    return SafeArea(
      child: Scaffold(body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: 612,
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60,),
              const Text('Enter Your OTP', style: TextStyle(color: Colors.black54, fontSize: 20, fontWeight: FontWeight.bold),),
              const SizedBox(height: 20,),
              text2,
              const SizedBox(height: 20,),
              SizedBox(height: 110,width: 300,child: Form(child: TextFormField(
                keyboardType: TextInputType.number,
                controller: _phoneOtpPinTextController,
                decoration: const InputDecoration(
                  hintText: 'X  X  X  X '
                ),
              )),),
              const Text('OTP Sent To +91 X X X X X   X X X X X ', style: TextStyle(color: Colors.black38, fontSize: 18, fontWeight: FontWeight.w800,),),
              const SizedBox(height: 20,),
              InkWell(
                child: Text('Resend ', style: TextStyle(color: Colors.blueAccent.shade700, fontSize: 22, decoration: TextDecoration.underline),),
                onTap: () {},
              ),
              const SizedBox(height: 200,),
              const Button(text: 'Submit', route: '/home',),
              
            ],
          ),
        ),
      ),),
      
    );
  }

  
}