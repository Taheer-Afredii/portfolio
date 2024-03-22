import 'package:flutter/material.dart';
import 'package:tahir_portfolio/view%20model/responsive.dart';

class NavigationTextButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  const NavigationTextButton(
      {super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TextButton(
        onPressed: onTap,
        child: Text(
          text,
          style: Theme.of(context).textTheme.labelMedium!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: Responsive.isMobile(context) &&
                      Responsive.isLargeMobile(context)
                  ? size.width <= 360
                      ? 8
                      : 12
                  : 16),
        ));
  }
}
