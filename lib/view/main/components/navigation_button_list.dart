import 'package:flutter/material.dart';
import 'package:tahir_portfolio/view%20model/controller.dart';

import 'navigation_button.dart';

class NavigationButtonList extends StatelessWidget {
  const NavigationButtonList({super.key, required this.onTap});
  final void Function(int) onTap;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Transform.scale(
          scale: value,
          child: Row(
            children: [
              //home button
              NavigationTextButton(
                  onTap: () {
                    onTap(0);
                  },
                  text: 'Home'),

              NavigationTextButton(
                  onTap: () {
                    onTap(1);
                  },
                  text: 'About Me'),
              NavigationTextButton(
                  onTap: () {
                    onTap(2);
                  },
                  text: 'Projects'),
              NavigationTextButton(
                  onTap: () {
                    onTap(3);
                  },
                  text: 'Skills'),
              // NavigationTextButton(
              //     onTap: () {

              //     },
              //     text: 'Achievements'),
            ],
          ),
        );
      },
    );
  }
}
