import 'package:flutter/material.dart';
import 'package:tahir_portfolio/view%20model/responsive.dart';
import 'package:tahir_portfolio/view/intro/components/side_menu_button.dart';
import 'package:tahir_portfolio/view/main/components/connect_button.dart';

import '../../../res/constants.dart';
import 'navigation_button_list.dart';

class TopNavigationBar extends StatelessWidget {
  final void Function(int) onTap; // Add onTap here

  const TopNavigationBar({Key? key, required this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child:
                // !Responsive.isLargeMobile(context)
                //     ? Image.asset('assets/images/triange_icon.png')
                //     :
                MenuButton(
              onTap: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          // if(Responsive.isLargeMobile(context)) MenuButton(),
          const Spacer(
            flex: 2,
          ),
          if (!Responsive.isLargeMobile(context))
            NavigationButtonList(onTap: onTap),
          const Spacer(
            flex: 2,
          ),
          const ConnectButton(),
          const Spacer(),
        ],
      ),
    );
  }
}
