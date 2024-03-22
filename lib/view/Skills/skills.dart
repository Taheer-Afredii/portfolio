import 'package:flutter/material.dart';
import 'package:tahir_portfolio/res/constants.dart';
import 'package:tahir_portfolio/view%20model/responsive.dart';
import 'package:tahir_portfolio/view/Skills/widget/skill_grid.dart';
import 'package:tahir_portfolio/view/projects/components/title_text.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            if (Responsive.isLargeMobile(context))
              const SizedBox(
                height: defaultPadding,
              ),
            const TitleText(prefix: 'My', title: 'Skills'),
            const SizedBox(
              height: defaultPadding,
            ),
            const Expanded(
              child: Responsive(
                desktop: SkillGrid(
                  crossAxisCount: 3,
                  ratio: 1.5,
                ),
                extraLargeScreen: SkillGrid(
                  crossAxisCount: 4,
                ),
                largeMobile: SkillGrid(crossAxisCount: 2, ratio: 1.8),
                mobile: SkillGrid(crossAxisCount: 2, ratio: 1.5),
                tablet: SkillGrid(
                  ratio: 1.4,
                  crossAxisCount: 2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
