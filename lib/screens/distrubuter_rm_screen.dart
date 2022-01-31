import 'package:flutter/material.dart';

class DistrubutorRMScreen extends StatefulWidget {
  const DistrubutorRMScreen({Key? key}) : super(key: key);

  @override
  _DistributorRMScreen createState() => _DistributorRMScreen();
}

class _DistributorRMScreen extends State<DistrubutorRMScreen> {

  @override
  void initState() => super.initState();

  @override
  Widget build(BuildContext context) {

    return Scrollbar(
      isAlwaysShown: true,
      showTrackOnHover: true,
      child: SafeArea(
        child: Scaffold(
          body: Container(
            padding: const EdgeInsets.only(top: 5, bottom: 20, left: 20, right: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/Vivriti logo.png', width: 120, height: 75,),
                    const SizedBox(width: 1145,),
                    Icon(Icons.notifications_none, color: Colors.indigoAccent.shade700,),
                    const SizedBox(width: 20,),
                    const CircleAvatar(
                      radius: 22,
                      foregroundImage: AssetImage('assets/images/Work.png'),
                    ),
                  ],
                ),
                Stack(children: [
                  const Image(image: AssetImage('assets/images/lap.png')),
                  Positioned(
                    top: 50,
                    left: 900,
                    bottom: 90,
                    right: 50,
                    child: Container(
                      height: 50,
                      width: 10,
                      decoration: BoxDecoration(
                        color: Colors.indigoAccent.shade700,
                        border: Border.all(
                          color: Colors.indigoAccent.shade700
                        )
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text('DISTRIBUTOR & RM \nSELECTION', style: TextStyle(fontSize: 40, color: Colors.white,),),
                      ),
                    ),
                  ),
                ],),
                const SizedBox(height: 20,),
                Container(
                  height: 120,
                      width: 1200,
                      decoration: BoxDecoration(
                        color: Colors.indigoAccent.shade700,
                        border: Border.all(
                          color: Colors.indigoAccent.shade700,
                        )
                      ),
                ),
                const SizedBox(height: 20,),
                Container(
                  height: 80,
                  width: 600,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black45,
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Is there a Distributor RM for this Investment ?', style: TextStyle(fontWeight: FontWeight.w500),),
                        Row(children: [
                          Icon(Icons.circle_outlined, color: Colors.indigoAccent.shade700,),
                          Radio(
                            value: 1, groupValue: 1, onChanged: (ValueKey) {}),
                        ],),
                      ],
                    ),
                  ),
                  
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }

}

