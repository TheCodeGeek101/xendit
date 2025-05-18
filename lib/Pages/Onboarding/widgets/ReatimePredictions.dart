import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../Constants/Colors.dart';

class RealtimePredictionsScreen extends StatelessWidget {
  RealtimePredictionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      // color: Colors.grey.shade300,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors:[Colors.white,Constants.primaryColor],
            )
        ),
        child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              // Image.asset("assets/images/plant-three.png",height:300),
              Lottie.asset(
                'assets/animations/Analytics.json',
                height:350,
                width:350,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal:20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Text(
                          'Real-Time Rate Predictions',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(
                            height: 10
                        ),
                        Text(
                          'Know When to Exchange',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                            height: 10
                        ),
                        Text(
                         'AI-powered predictions help you exchange at the best time – no guesswork, just data-backed timing'                          ,
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        ButtonTheme(
                            height: 50,
                            minWidth:150,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white, backgroundColor: Constants.primaryColor, // foreground
                              ),
                              onPressed: () {
                                // Navigator.pushReplacement(context,
                                //     MaterialPageRoute(builder: (_) => const SignIn()));
                              },
                              child: const Text('Skip'),
                            )
                        )
                      ]
                  )
              ),
            ]
        )
    );
  }
}