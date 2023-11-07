import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class StaggeredAnimate extends StatelessWidget {
  const StaggeredAnimate(
      {super.key,
      required this.position,
      required this.child,
      required this.direction,
      this.delay,
      this.offset = 100,
      this.duration = const Duration(seconds: 1)});
  final int position;
  final Widget child;
  final Axis direction;
  final Duration? delay;
  final double offset;
  final Duration duration;
  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.staggeredList(
        position: position,
        delay: delay,
        duration: duration,
        child: SlideAnimation(
          horizontalOffset: direction == Axis.horizontal ? offset : null,
          verticalOffset: direction == Axis.vertical ? offset : null,
          child: FadeInAnimation(
            duration: duration,
            child: child,
          ),
        ));
  }
}
