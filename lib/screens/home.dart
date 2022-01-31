import 'package:flutter/material.dart';
import 'package:vivriti_invester_ui/widgets/custom_buttons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() => super.initState();

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
          children: [
              Align(
                alignment: Alignment.topRight,
                child: Image.asset('assets/images/Vivriti logo.png', height: 50, width: 150,)),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('Welcome \nBack', style: TextStyle(fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: Colors.blue.shade900,
                      ),),
                  ),
                ),
                Image.asset('assets/images/Work.png', height: 300, width: 300,),
                const SizedBox(height: 70,),
                CustomButtons(text1: 'Distributor', route: '/sign', widthSize: 170, heightSize: 50, text2: 'Investor', dheightSize: 60, dwidthSize: 350, centerWidthSize: 67, lastWidthSize: 36, route1: '',),
          ],
          ),
        ),
      ),
    );
  }

}