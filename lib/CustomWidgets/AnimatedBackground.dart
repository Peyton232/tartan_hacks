import 'package:flutter/material.dart';
import 'package:tartan_hacks/Data/constants.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';
import 'package:pedantic/pedantic.dart';
import 'package:particles_flutter/particles_flutter.dart';

class AnimatedBackground extends StatefulWidget {
  @override
  _AnimatedBackgroundState createState() => _AnimatedBackgroundState();
}

class _AnimatedBackgroundState extends State<AnimatedBackground> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        height: 350,
        width: 350,
        child: Center(
          child: CircularParticle(
            awayRadius: 80,
            numberOfParticles: 200,
            speedOfParticles: 1,
            height: screenHeight,
            width: screenWidth,
            onTapAnimation: true,
            particleColor: Colors.white.withAlpha(150),
            awayAnimationDuration: Duration(milliseconds: 600),
            maxParticleSize: 8,
            isRandSize: true,
            isRandomColor: false,
            // randColorList: [
            //   Colors.red.withAlpha(210),
            //   Colors.white.withAlpha(210),
            //   Colors.yellow.withAlpha(210),
            //   Colors.green.withAlpha(210)
            // ],
            awayAnimationCurve: Curves.easeInOutBack,
            enableHover: true,
            hoverColor: Colors.white,
            hoverRadius: 90,

            connectDots: false, //not recommended
          ),
        ),
      ),
    );
  }
}
