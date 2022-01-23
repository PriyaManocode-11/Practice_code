import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; 
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: size.height,
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Positioned(
                  top: 0,
                  bottom: 0,
                  child: Image.asset('assets/images/Vivriti logo.png', height: 50, width: 150,))),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('Welcome Back', style: TextStyle(fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: Colors.blue.shade900,
                  ),),   
                ),
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset('assets/images/Work.png', height: 300, width: 300,)),
              SizedBox(height: 75),
              Container(
                 height: 52,
                    width: 345,
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
                      child: Text('Distrubutor',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, )),
                      textColor: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 20.0),
                      onPressed: () {
                        Navigator.of(context).pushNamed(
                         '/sign', 
                        );
                      }
                    ),
                    SizedBox(width: 90,),
                    OutlinedButton(
                       style: OutlinedButton.styleFrom(
                        shape: StadiumBorder(),
                        side: BorderSide(width: 1,color: Colors.transparent), 
                      ),
                      onPressed: () {}, child:  Text('Investor',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.blue.shade800)),),
                      
                  ],
                ),
              ),
          ],), 
        ),  
      ),
    );
  }

}