import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:fitbite/pages/LoginPage.dart';
import 'package:fitbite/components/my_colors.dart';

class PantallaCarga extends StatefulWidget {
  final Widget nextPage;

  const PantallaCarga({Key? key, required this.nextPage}) : super(key: key);

  @override
  _PantallaCargaState createState() => _PantallaCargaState();
}

class _PantallaCargaState extends State<PantallaCarga>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 5000),
    );
    _fadeAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);
    _startAnimation();
    Timer(
      Duration(seconds: 5),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (BuildContext context) => widget.nextPage,
          ),
        );
      },
    );
  }

  void _startAnimation() {
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          MyColors.color1, // Color de fondo de la pantalla de carga
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 5,
            child: Padding(
              padding: const EdgeInsets.only(left: 0.0),
              child: Image.asset(
                'assets/img/img_carga_1.png',
                width: 232,
                height: 242,
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              'assets/img/img_carga_2.png',
              fit: BoxFit.cover,
              width: 445,
              height: 437,
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(
                sigmaX: 4, sigmaY: 4), // Configura el desenfoque
            child: Container(
              color: Colors.white
                  .withOpacity(0.2), // Color del vidrio (glass) y su opacidad
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Center(
            child: Stack(
              children: [
                AnimatedBuilder(
                  animation: _fadeAnimation,
                  builder: (context, child) {
                    return Opacity(
                      opacity: _fadeAnimation.value,
                      child: child,
                    );
                  },
                  child: Image.asset('assets/logo/logo_fitbite.png'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
