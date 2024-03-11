import 'package:flutter/material.dart';
import 'package:tahir_portfolio/res/constants.dart';
import 'package:tahir_portfolio/view%20model/responsive.dart';
import 'package:tahir_portfolio/view/projects/components/title_text.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal:
            Responsive.isLargeMobile(context) && Responsive.isTablet(context)
                ? defaultPadding * 2
                : Responsive.isMobile(context)
                    ? 20
                    : defaultPadding * 8,
      ),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isLargeMobile(context))
              const SizedBox(
                height: defaultPadding,
              ),
            const TitleText(prefix: 'About', title: 'Me'),
            const HeadingText(text: "Software Engineer || Flutter Developer"),
            const HeadingText(
                text: "AppSpot, Peshawar,KPK(JAN 2021 - Present)"),
            const SizedBox(
              height: defaultPadding,
            ),
            const CustomBulletPoint(
              text:
                  "Developed and maintained multiple Flutter applications, ensuring a seamless and performant user experience across Android and iOS platforms.",
            ),
            const CustomBulletPoint(
              text:
                  "Integrated RESTful APIs and third-party libraries to fetch and manage data, enhancing app functionality.",
            ),
            const CustomBulletPoint(
              text:
                  "Implemented state management solutions like Provider to manage app state effectively and improve code maintainability.",
            ),
            const CustomBulletPoint(
              text:
                  "Integrated In-App Purchases, enabling users to make secure transactions for premium features within app.",
            ),
            const CustomBulletPoint(
              text:
                  "Implemented real-time data graph functionality using Flutter charts library,displaying dynamic visualization of user data.",
            ),
            const CustomBulletPoint(
              text:
                  "Collaborated with team members using Git for version control and code collaboration, ensuring smooth development workflow.",
            ),
            const CustomBulletPoint(
              text:
                  "Participated in code reviews, providing constructive feedback and ensuring adherence to coding standards.",
            ),
            const CustomBulletPoint(
              text:
                  "Worked closely with QA teams to identify and address bugs, ensuring delivery of bug-free applications.",
            ),
            const CustomBulletPoint(
              text:
                  "Collaborated with UI/UX designers to implement elegant and responsive user interfaces using Flutter widgets.",
            ),
          ],
        ),
      ),
    );
  }
}

class HeadingText extends StatelessWidget {
  const HeadingText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        height: 1.5,
        fontSize: Responsive.isDesktop(context)
            ? 18
            : Responsive.isLargeMobile(context) && !Responsive.isTablet(context)
                ? 14
                : Responsive.isMobile(context)
                    ? 12
                    : 18,
      ),
      // maxLines: size.width > 700 && size.width < 750
      //     ? 3
      //     : size.width < 470
      //         ? 2
      //         : size.width > 600 && size.width < 700
      //             ? 6
      //             : size.width > 900 && size.width < 1060
      //                 ? 6
      //                 : 4,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class CustomBulletPoint extends StatelessWidget {
  const CustomBulletPoint({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: <TextSpan>[
          TextSpan(
            text: '\u2022 ',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: Responsive.isDesktop(context)
                    ? 18
                    : Responsive.isLargeMobile(context) &&
                            !Responsive.isTablet(context)
                        ? 14
                        : Responsive.isMobile(context)
                            ? 12
                            : 18,
                color: Colors.white),
          ),
          TextSpan(
              text: '$text\n',
              style: TextStyle(
                  fontSize: Responsive.isDesktop(context)
                      ? 18
                      : Responsive.isLargeMobile(context) &&
                              !Responsive.isTablet(context)
                          ? 14
                          : Responsive.isMobile(context)
                              ? 12
                              : 18,
                  color: Colors.white)),

          // Add more TextSpans for more bullet points
        ],
      ),
    );
  }
}
