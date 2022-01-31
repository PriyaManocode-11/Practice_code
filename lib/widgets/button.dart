import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final String route;
  const Button({ Key? key, required this.text, required this.route }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 300,
      child: InkWell(child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text, style: const TextStyle(fontSize: 25, color: Colors.white),),
          const SizedBox(width: 10,),
          const Icon(Icons.arrow_forward_sharp, color: Colors.white,),
        ],
      ), onTap: () {
        Navigator.of(context).pushNamed(
                         route, 
                        );
      }, ),
        decoration: BoxDecoration(
        color: Colors.blue.shade800,
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }

  
}