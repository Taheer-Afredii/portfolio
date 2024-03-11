import 'package:flutter/material.dart';
import 'package:tahir_portfolio/view/AboutMe/about_me.dart';
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
      const CommingSoon(),

      // const CommingSoon(),
    ]);
  }
}

class CommingSoon extends StatelessWidget {
  const CommingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Comming Soon'),
      ),
    );
  }
}
