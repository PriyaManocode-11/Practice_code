import 'package:flutter/material.dart';

class CustomButtons extends StatefulWidget {
  final String text1;
  final String text2;
  final String route;
  String route1;
  double widthSize;
  double heightSize;
  double dheightSize;
  double dwidthSize;
  double centerWidthSize;
  double lastWidthSize;
  CustomButtons({ Key? key, required this.text1, required this.route, required this.widthSize, required this.heightSize, required this.text2, required this.dheightSize, required this.dwidthSize, required this.centerWidthSize, required this.lastWidthSize, required this.route1 }) : super(key: key);

  @override
  State<CustomButtons> createState() => _CustomButtonsState();
}

class _CustomButtonsState extends State<CustomButtons> {
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
          ColorButton(context),
        SizedBox(width: widget.centerWidthSize,),
        UncolorButton(),
          SizedBox(width: widget.lastWidthSize,),
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