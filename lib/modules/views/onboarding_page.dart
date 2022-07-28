import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:save_money/modules/views/onboarding_screen/onboarding1.dart';
import 'package:save_money/modules/views/onboarding_screen/onboarding2.dart';
import 'package:save_money/modules/views/onboarding_screen/onboarding3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {

  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: const [
              OnBoarding1Page(),
              OnBoarding2Page(),
              OnBoarding3Page(),
            ],
          ),
          Container(
            alignment: const Alignment(0,0.36),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
            ),
          ),
        ],
      ),
    );
  }
}
