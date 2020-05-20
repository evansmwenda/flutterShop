import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

enum _AniProps { opacity, translateY }

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeAnimation(this.delay, this.child);

  @override
  Widget build(BuildContext context) {
//    final tween = MultiTrackTween([
//      Track("opacity").add(
//          Duration(milliseconds: 500), Tween(begin: 0.0, end: 1.0)),
//      Track("translateY").add(
//          Duration(milliseconds: 500), Tween(begin: -30.0, end: 0.0),
//          curve: Curves.easeOut)
//    ]);

    final tween = MultiTween<_AniProps>()
      ..add(_AniProps.opacity, Tween(begin: 0.0, end: 1.0))
      ..add(_AniProps.translateY, Tween(begin: -30.0, end: 0.0));

    return PlayAnimation<MultiTweenValues<_AniProps>>(
      delay:  Duration(milliseconds: (500 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builder: (context, child, value) => Opacity(
        opacity: value.get(_AniProps.opacity),
        child: Transform.translate(
          offset: Offset(0,value.get(_AniProps.translateY)),
          child: child,
        ),
      ),
    );

//    return ControlledAnimation(
//      delay: Duration(milliseconds: (500 * delay).round()),
//      duration: tween.duration,
//      tween: tween,
//      child: child,
//      builderWithChild: (context, child, animation) =>
//          Opacity(
//            opacity: animation["opacity"],
//            child: Transform.translate(
//                offset: Offset(0, animation["translateY"]),
//                child: child
//            ),
//          ),
//    );
  }
}

//enum _AniProps { opacity, translateX }
//
//class FadeIn extends StatelessWidget {
//  final double delay;
//  final Widget child;
//
//  FadeIn(this.delay, this.child);
//
//  @override
//  Widget build(BuildContext context) {
//    final tween = MultiTween<_AniProps>()
//      ..add(_AniProps.opacity, 0.0.tweenTo(1.0))
//      ..add(_AniProps.translateX, 130.0.tweenTo(0.0));
//
//    return PlayAnimation<MultiTweenValues<_AniProps>>(
//      delay: (300 * delay).round().milliseconds,
//      duration: Duration(milliseconds: 500),
//      tween: tween,
//      child: child,
//      builder: (context, child, value) => Opacity(
//        opacity: value.get(_AniProps.opacity),
//        child: Transform.translate(
//          offset: Offset(value.get(_AniProps.translateX), 0),
//          child: child,
//        ),
//      ),
//    );
//  }
//}
