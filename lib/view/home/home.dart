import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tahir_portfolio/view/AboutMe/about_me.dart';
import 'package:tahir_portfolio/view/Skills/skills.dart';
import 'package:tahir_portfolio/view/intro/introduction.dart';
import 'package:tahir_portfolio/view/main/main_view.dart';
import 'package:tahir_portfolio/view/projects/project_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainView(pages: [
      const Introduction(),
      const AboutMe(),
      ProjectsView(),
      const Skills(),

      // const CommingSoon(),
    ]);
  }
}
