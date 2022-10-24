import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LoadingAnimationWidget.fourRotatingDots(
          color: const Color(0xFF0E86D4),
          size: 50,
        ),
      ),
    );
  }
}
