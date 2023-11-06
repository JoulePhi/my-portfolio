import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class StaggeredAnimate extends StatelessWidget {
  const StaggeredAnimate({
    super.key,
    required this.position,
    required this.child,
    required this.direction,
    this.delay,
  });
  final int position;
  final Widget child;
  final Axis direction;
  final Duration? delay;
  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.staggeredList(
        position: position,
        delay: delay,
        duration: const Duration(seconds: 1),
        child: SlideAnimation(
          horizontalOffset: direction == Axis.horizontal ? 100 : null,
          verticalOffset: direction == Axis.vertical ? 100 : null,
          child: FadeInAnimation(
            duration: const Duration(seconds: 1),
            child: child,
          ),
        ));
  }
}
