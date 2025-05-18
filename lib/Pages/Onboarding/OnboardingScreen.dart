import 'package:clone_2025/Pages/Onboarding/widgets/PersonalizedTips.dart';
import 'package:clone_2025/Pages/Onboarding/widgets/ReatimePredictions.dart';
import 'package:clone_2025/Pages/Onboarding/widgets/SmartRouting.dart';
import 'package:clone_2025/Pages/Onboarding/widgets/Welcome.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';


class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() {
    return _OnboardingScreenState();
  }
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final pages = [
      WelcomeScreen(),
      RealtimePredictionsScreen(),
      SmartRoutingScreen(),
      PersonalizedtipsScreen()
    ];

    return Scaffold(
        body: LiquidSwipe(
            pages:pages,
            positionSlideIcon: 0,
            slideIconWidget: Icon(
              Icons.arrow_back_ios,
              size: 30,
              color: Colors.green,
            )
        )
    );
  }
}