import 'package:flutter/material.dart';
import 'package:tahir_portfolio/view%20model/responsive.dart';
import 'package:tahir_portfolio/view/AboutMe/about_me.dart';
import 'package:tahir_portfolio/view/Skills/skills.dart';
import 'package:tahir_portfolio/view/intro/components/side_menu_button.dart';
import 'package:tahir_portfolio/view/intro/introduction.dart';
import 'package:tahir_portfolio/view/main/components/connect_button.dart';
import 'package:tahir_portfolio/view/projects/project_view.dart';

import 'components/drawer/drawer.dart';
import 'components/navigation_button_list.dart';

class MainView extends StatefulWidget {
  const MainView({
    super.key,
  });

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final ScrollController _controller = ScrollController();

  double introductionOffset = 0;
  double aboutMeOffset = 0;
  double projectsViewOffset = 0;
  double skillsOffset = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _calculateOffsets();
    });
  }

  void _calculateOffsets() {
    RenderBox introductionBox =
        introductionKey.currentContext!.findRenderObject() as RenderBox;
    RenderBox aboutMeBox =
        aboutMeKey.currentContext!.findRenderObject() as RenderBox;
    RenderBox projectsViewBox =
        projectsViewKey.currentContext!.findRenderObject() as RenderBox;
    RenderBox skillsBox =
        skillsKey.currentContext!.findRenderObject() as RenderBox;

    setState(() {
      introductionOffset = introductionBox.localToGlobal(Offset.zero).dy;
      aboutMeOffset = aboutMeBox.localToGlobal(Offset.zero).dy;
      projectsViewOffset = projectsViewBox.localToGlobal(Offset.zero).dy;
      skillsOffset = skillsBox.localToGlobal(Offset.zero).dy;
    });
  }

  void scrollToWidget(double offset) {
    _controller.animateTo(
      offset,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: CustomAppBar(
          controller: _controller,
          introductionOffset: introductionOffset,
          aboutMeOffset: aboutMeOffset,
          projectsViewOffset: projectsViewOffset,
          skillsOffset: skillsOffset),
      body: Center(
        child: SingleChildScrollView(
          controller: _controller,
          child: Column(
            children: [
              // kIsWeb && !Responsive.isLargeMobile(context)
              //     ? const SizedBox(
              //         height: defaultPadding * 2,
              //       )
              //     : const SizedBox(
              //         height: defaultPadding / 2,
              //       ),
              // SizedBox(
              //   height: 80,
              //   child: TopNavigationBar(
              //     onTap: (index) {
              //       switch (index) {
              //         case 0:
              //           scrollToWidget(introductionOffset);
              //           break;
              //         case 1:
              //           scrollToWidget(aboutMeOffset);
              //           break;
              //         case 2:
              //           scrollToWidget(projectsViewOffset);
              //           break;
              //         case 3:
              //           scrollToWidget(skillsOffset);
              //           break;
              //       }
              //     },
              //   ),
              // ),
              // if (Responsive.isLargeMobile(context))
              //   Row(
              //     children: [
              //       const Spacer(),
              //       NavigationButtonList(
              //         onTap: (index) {
              //           switch (index) {
              //             case 0:
              //               scrollToWidget(introductionOffset);
              //               break;
              //             case 1:
              //               scrollToWidget(aboutMeOffset);
              //               break;
              //             case 2:
              //               scrollToWidget(projectsViewOffset);
              //               break;
              //             case 3:
              //               scrollToWidget(skillsOffset);
              //               break;
              //           }
              //         },
              //       ),
              //       const Spacer()
              //     ],
              //   ),
              SizedBox(
                key: introductionKey,
                height: size.height * 1,
                child: const Introduction(),
              ),
              SizedBox(
                key: aboutMeKey,
                height: size.height * 1,
                child: const AboutMe(),
              ),
              SizedBox(
                key: projectsViewKey,
                height: Responsive.isMobile(context) &&
                        Responsive.isLargeMobile(context)
                    ? size.height * 1.7
                    : size.height * 1.1,
                child: ProjectsView(),
              ),
              SizedBox(
                key: skillsKey,
                height: size.height * 1.1,
                child: const Skills(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

final GlobalKey introductionKey = GlobalKey();
final GlobalKey aboutMeKey = GlobalKey();
final GlobalKey projectsViewKey = GlobalKey();
final GlobalKey skillsKey = GlobalKey();

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key,
      required this.controller,
      required this.introductionOffset,
      required this.projectsViewOffset,
      required this.skillsOffset,
      required this.aboutMeOffset});
  final ScrollController controller;
  final double introductionOffset;
  final double projectsViewOffset;
  final double skillsOffset;
  final double aboutMeOffset;
  @override
  Size get preferredSize =>
      const Size.fromHeight(100); // Set the height of the AppBar.
  void scrollToWidget(double offset) {
    controller.animateTo(
      offset,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AppBar(
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      leadingWidth: size.width,
      leading: Padding(
        padding:
            Responsive.isMobile(context) && Responsive.isLargeMobile(context)
                ? const EdgeInsets.only(top: 15, left: 20, right: 20)
                : const EdgeInsets.only(top: 15, left: 40, right: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MenuButton(
              onTap: () => Scaffold.of(context).openDrawer(),
            ),
            NavigationButtonList(
              onTap: (index) {
                switch (index) {
                  case 0:
                    scrollToWidget(introductionOffset);
                    break;
                  case 1:
                    scrollToWidget(aboutMeOffset);
                    break;
                  case 2:
                    scrollToWidget(projectsViewOffset);
                    break;
                  case 3:
                    scrollToWidget(skillsOffset);
                    break;
                }
              },
            ),
            Responsive.isMobile(context) && Responsive.isLargeMobile(context)
                ? const ConnectButtonMobile()
                : const ConnectButton(),
          ],
        ),
      ),
    );
  }
}

// class MainView extends StatelessWidget {
//   const MainView({super.key, });
  
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       drawer: const CustomDrawer(),
//       body: Center(
//         child: SingleChildScrollView(
//           child: SizedBox(
//             height: size.height * 4.5,
//             width: size.width,
//             child: Column(
//               children: [
//                 kIsWeb && !Responsive.isLargeMobile(context)
//                     ? const SizedBox(
//                         height: defaultPadding * 2,
//                       )
//                     : const SizedBox(
//                         height: defaultPadding / 2,
//                       ),
//                 const SizedBox(
//                   height: 80,
//                   child: TopNavigationBar(),
//                 ),
//                 if (Responsive.isLargeMobile(context))
//                   const Row(
//                     children: [Spacer(), NavigationButtonList(), Spacer()],
//                   ),

//                 SizedBox(height: size.height * 1, child: const Introduction()),
//                 SizedBox(height: size.height * 1, child: const AboutMe()),
//                 SizedBox(height: size.height * 1.1, child: ProjectsView()),
//                 SizedBox(height: size.height * 1.1, child: const Skills()),
//                 // SizedBox(
//                 //   height: size.height * 1,
//                 //   child: PageView.builder(
//                 //     itemCount: pages.length,
//                 //     scrollDirection: Axis.vertical,
//                 //     controller: controller,
//                 //     pageSnapping: false,
//                 //     itemBuilder: (context, index) {
//                 //       return pages[index];
//                 //     },
//                 //   ),

//                 //   //  PageView(
//                 //   //   allowImplicitScrolling: false,
//                 //   //   scrollDirection: Axis.vertical,
//                 //   //   physics: const BouncingScrollPhysics(),
//                 //   //   controller: controller,
//                 //   //   children: [...pages],
//                 //   // ),
//                 // )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
