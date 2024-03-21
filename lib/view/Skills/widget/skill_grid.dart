import 'package:flutter/material.dart';
import 'package:tahir_portfolio/model/skill_model.dart';
import 'package:tahir_portfolio/res/constants.dart';
import 'package:tahir_portfolio/view%20model/responsive.dart';

class SkillGrid extends StatefulWidget {
  final int crossAxisCount;
  final double ratio;
  const SkillGrid({super.key, this.crossAxisCount = 3, this.ratio = 1.3});

  @override
  State<SkillGrid> createState() => _SkillGridState();
}

class _SkillGridState extends State<SkillGrid> {
  bool isHovered = false;
  int? selectedIndex;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      itemCount: skillsList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: widget.crossAxisCount,
          childAspectRatio: widget.ratio),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {},
          onHover: (value) {
            setState(() {
              isHovered = value;
              selectedIndex = index;
            });
          },
          child: isHovered && selectedIndex == index
              ? Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: defaultPadding, horizontal: defaultPadding),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Container(
                      height: size.height * 0.2,
                      width: Responsive.isLargeMobile(context) &&
                              Responsive.isMobile(context)
                          ? size.width * 0.3
                          : size.width * 0.1,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              skillsList[index].image!,
                            ),
                            fit: BoxFit.contain,
                            scale: 0.1,
                            opacity: 0.1),
                      ),
                      child: Center(
                        child: Text(
                          skillsList[index].name!,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: Responsive.isDesktop(context) &&
                                      Responsive.isExtraLargeScreen(context)
                                  ? 20
                                  : Responsive.isLargeMobile(context) &&
                                          Responsive.isMobile(context)
                                      ? 16
                                      : 16),
                        ),
                      ),
                    ),
                  ),
                )
              : Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: defaultPadding, horizontal: defaultPadding),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey.withOpacity(0.5)),
                  child: Center(
                    child: SizedBox(
                      height: size.height * 0.2,
                      width: size.width * 0.1,
                      child: Image.asset(
                        skillsList[index].image!,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
        );
      },
    );
  }
}
