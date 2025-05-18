import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../Constants/Colors.dart';


class PersonalizedtipsScreen extends StatelessWidget {
  PersonalizedtipsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        color: Constants.primaryColor,
        child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              // Image.asset("assets/images/plant-four.png",height:300),
              Lottie.asset(
                'assets/animations/exchange1.json',
                height:350,
                width:350,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal:20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Text(
                          'Personalized FX Hedging Tips',
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
                          'Stay Ahead of the Market',
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
                          ' Frequent sender? FXMate gives you customized strategies to hedge risks and protect your money',
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
                                foregroundColor: Constants.primaryColor, backgroundColor: Colors.white, // foreground
                              ),
                              onPressed: () {
                                // Navigator.pushReplacement(context,
                                //     MaterialPageRoute(builder: (_) => const SignIn()));
                              },
                              child: const Text('Get Started'),
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