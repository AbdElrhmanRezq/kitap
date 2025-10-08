import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({super.key, required this.slideAnimation});

  final Animation<Offset> slideAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slideAnimation,
      builder: (context, _) => SlideTransition(
        position: slideAnimation,
        child: Text(
          "Books for everyone",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
