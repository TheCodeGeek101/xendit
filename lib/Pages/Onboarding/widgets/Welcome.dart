import 'package:clone_2025/Constants/Colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.white, Constants.primaryColor],
            )
        ),
        child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              Lottie.asset(
                'assets/animations/exchange.json',
                height:350,
                width:350,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal:20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Text(
                          'Welcome to Xendit',
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
                          ' Smart Foreign Exchange at Your Fingertips',
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
                          'Say goodbye to hidden fees and bad exchange rates. '
                              'Xendit finds the fastest, cheapest, and most reliable way to send money across borders.'                          ,
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
                          ),
                        ),
                        SizedBox(
                            height:20
                        ),
                        Center(child: Text('Swipe left to continue...',style:TextStyle(color:Colors.white))),
                        SizedBox(
                            height:20
                        ),
                        Row(
                          children: const [
                            Expanded(child: Divider()),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Text('Xendit', style:TextStyle(color:Color(0xff296e48)))),
                            Expanded(child: Divider()),
                          ],
                        ),
                        SizedBox(height:20),
                        GestureDetector(
                          onTap: () {

                          },
                          child: Center(
                            child: Text.rich(
                              TextSpan(children: [
                                TextSpan(
                                  text: 'Powered by ',
                                  style: TextStyle(
                                    color: Constants.blackColor,
                                  ),
                                ),
                                TextSpan(
                                  text: 'xendit.com',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ]),
                            ),
                          ),
                        ),
                      ]
                  )
              ),
            ]
        )
    );
  }
}