import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:rive/rive.dart' hide Image;

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  late RiveAnimationController _btnController;

  @override
  void initState() {
    super.initState();
    _btnController = OneShotAnimation("active", autoplay: false);
  }

  @override
  void dispose() {
    _btnController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
            child: OverflowBox(
              maxWidth: double.infinity,
              child: Transform.translate(
                offset: const Offset(200, 100),
                child: Image.asset(
                  'assets/images/backgrounds/spline.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
            child: const RiveAnimation.asset('assets/rive/shapes.riv'),
          ),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(40, 80, 40, 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 260,
                  child: const Text(
                    'Learn design & code',
                    style: TextStyle(fontFamily: 'Poppins', fontSize: 50),
                  ),
                ),
                Text(
                  "Don't skip design. Learn design and code by building the real apps with React and Swiff. Complete course about the best tool",
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 13,
                      color: Colors.black.withOpacity(0.7)),
                ),
                const SizedBox(
                  height: 16,
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    _btnController.isActive = true;
                  },
                  child: Container(
                    width: 236,
                    height: 64,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 10,
                            offset: const Offset(0, 10),
                          )
                        ]),
                    child: Stack(children: [
                      RiveAnimation.asset(
                        'assets/rive/button.riv',
                        fit: BoxFit.cover,
                        controllers: [
                          _btnController
                        ],),
                      Center(
                          child: Transform.translate(
                        offset: const Offset(4, 4),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.arrow_forward_rounded),
                            Text(
                              'Start the course',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ))
                    ]),
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
