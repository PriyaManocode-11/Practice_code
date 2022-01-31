import 'package:flutter/material.dart';

class CustomButtonsSignin extends StatefulWidget {
  final String text1;
  final String text2;
  final String route;
  String route1;
  double widthSize;
  double heightSize;
  double dheightSize;
  double dwidthSize;
  double centerWidthSize;
  double firstWidthSize;
  CustomButtonsSignin({ Key? key, required this.text1, required this.route, required this.widthSize, required this.heightSize, required this.text2, required this.dheightSize, required this.dwidthSize, required this.centerWidthSize, required this.firstWidthSize, required this.route1 }) : super(key: key);

  @override
  State<CustomButtonsSignin> createState() => _CustomButtonsSigninState();
}

class _CustomButtonsSigninState extends State<CustomButtonsSignin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.dheightSize,
      width: widget.dwidthSize,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        border: Border.all(
          color: Colors.blue.shade800,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        SizedBox(width: widget.firstWidthSize,),
        UncolorButton(),
        SizedBox(width: widget.centerWidthSize,),
        ColorButton(context),
        ],
        
      ),
    );
  }

  Container ColorButton(BuildContext context) {
    return Container(
        height: widget.heightSize,
        width: widget.widthSize,
        child: InkWell(child: Center(child: Text(widget.text1, style: const TextStyle(fontSize: 18, color: Colors.white),)), onTap: () {
          Navigator.of(context).pushNamed(
                           widget.route, 
                         );
        }, ),
          decoration: BoxDecoration(
          color: Colors.blue.shade800,
          borderRadius: BorderRadius.circular(30.0),
        ),
      );
  }

  InkWell UncolorButton() {
    return InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(
                           widget.route1, 
                         );
        },
        child: Text(widget.text2, style: TextStyle(fontSize: 18, color: Colors.blue.shade800),),);
  }
}