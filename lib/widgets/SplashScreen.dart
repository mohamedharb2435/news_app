import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../views/home_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen ({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5), () async {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder:(context){
          return HomeView();
        }));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcecece),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child:AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText('News Cloud',
                    textStyle: TextStyle(
                      color: Color(0xff002b31),
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    )),
              ],
              repeatForever: true,
              onTap: () {
                print("Tap Event");
              },
            ),

          ),
        ],
      ),
    );
  }
}
