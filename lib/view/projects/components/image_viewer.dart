import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';
import 'package:tahir_portfolio/res/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class ImageViewer {
  ImageViewer(BuildContext context, String image) {
    showGeneralDialog(
      barrierColor: Colors.black,
      transitionDuration: const Duration(milliseconds: 500),
      barrierDismissible: true,
      barrierLabel: 'Barrier',
      context: context,
      pageBuilder: (context, animation, secondaryAnimation) {
        return Center(
          child: Hero(
            tag: 'IMAGEVIEW',
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Scaffold(
                  backgroundColor: Colors.black,
                  body: Container(
                    color: Colors.white,
                    child: Center(
                        child: PhotoView(imageProvider: AssetImage(image))),
                  )),
            ),
          ),
        );
      },
    );
  }
}

getDialogueMobile(List imageList, BuildContext context, String description) {
  Size size = MediaQuery.of(context).size;
  double padding = 20.0;

  double height = size.height - 2 * padding;
  double h = size.height;
  log("he in dialogue box $h");
  log("padding in mobile dialogue box $height");
  return Get.dialog(
    barrierColor: Colors.transparent,
    Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Material(
            borderRadius: BorderRadius.circular(22),
            child: Container(
              height: size.height * 0.81,
              decoration: BoxDecoration(
                color: const Color(0xFF181818),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 15),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          height: size.width * 0.1,
                          width: size.width * 0.1,
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                              color: Colors.black, shape: BoxShape.circle),
                          child: const Center(
                            child: Icon(
                              Icons.close,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Stack(
                    fit: StackFit.loose,
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.3,
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: imageList.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(
                                    right: defaultPadding / 2),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: Image.asset(imageList[index],
                                      fit: BoxFit.contain, errorBuilder:
                                          (context, error, stackTrace) {
                                    return const Center(
                                      child: Text('Error loading image'),
                                    );
                                  }, frameBuilder: (context, child, frame,
                                          wasSynchronouslyLoaded) {
                                    if (wasSynchronouslyLoaded) {
                                      return child;
                                    }
                                    return AnimatedOpacity(
                                      opacity: frame == null ? 0 : 1,
                                      duration: const Duration(seconds: 2),
                                      curve: Curves.easeOut,
                                      child: child,
                                    );
                                  }),
                                ),
                              );
                            }),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Description",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      description,
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // ClickMe(title: "PlayStore",url: "",)
                  // ClickMe(title: "PlayStore",url: "",)
                ],
              ),
            ),
          ),
        ),
      ),
    ),
    transitionCurve: Curves.easeInExpo,
    transitionDuration: const Duration(milliseconds: 1000),
  );
}

class ClickMe extends StatelessWidget {
  const ClickMe({
    super.key,
    required this.url,
    required this.title,
  });
  final String url;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          Text(
            '$title: ',
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          GestureDetector(
            onTap: () async {
              if (await canLaunchUrl(Uri.parse(url))) {
                await launchUrl(Uri.parse(url));
              } else {
                throw 'Could not launch $url';
              }
            },
            child: const Text(
              'Click me',
              style: TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
                decorationColor: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

getDialogue2(List imageList, BuildContext context, String description) {
  log("dialogue box laptop");
  Size size = MediaQuery.of(context).size;
  return Get.dialog(
    barrierColor: Colors.transparent,
    Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Material(
            borderRadius: BorderRadius.circular(22),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFF181818),
                borderRadius: BorderRadius.circular(20),
              ),
              child: SizedBox(
                height: size.height * 1.55,
                width: size.width,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.03,
                      vertical: size.height * 0.03),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Container(
                            height: size.width * 0.03,
                            width: size.width * 0.03,
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                                color: Colors.black, shape: BoxShape.circle),
                            child: const Center(
                              child: Icon(
                                Icons.close,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      const Text(
                        "Description",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 24),
                      SizedBox(
                        width: size.width * 0.8,
                        child: Text(
                          description,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 18),
                        ),
                      ),
                      SizedBox(height: size.height * 0.04),
                      Stack(
                        fit: StackFit.loose,
                        alignment: Alignment.center,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.9,
                            child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: imageList.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return Padding(
                                      padding: const EdgeInsets.only(
                                          right: defaultPadding / 2),
                                      child: Container(
                                        height: size.height * 1,
                                        width: size.width * 0.2,
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: DecorationImage(
                                            image: AssetImage(imageList[index]),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ));
                                }),
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.arrow_back_ios,
                                color: Colors.black,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),

                // Stack(
                //   fit: StackFit.expand,
                //   children: [

                //     const Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         Icon(
                //           Icons.arrow_back_ios,
                //           color: Colors.black,
                //         ),
                //         Icon(
                //           Icons.arrow_forward_ios,
                //           color: Colors.black,
                //         ),
                //       ],
                //     ),
                //   ],
                // ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
