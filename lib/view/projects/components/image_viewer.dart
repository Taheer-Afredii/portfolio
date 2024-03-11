import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tahir_portfolio/res/constants.dart';
import 'package:photo_view/photo_view.dart';

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

getDialogue(List imageList) {
  return Get.dialog(
    barrierColor: Colors.grey.withOpacity(0.7),
    Padding(
      padding: const EdgeInsets.all(60.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.cancel_outlined,
                color: Colors.white,
              )),
          Flexible(
            fit: FlexFit.loose,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: imageList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: defaultPadding / 2),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: Image.asset(
                        imageList[index],
                        fit: BoxFit.contain,
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    ),
    transitionCurve: Curves.easeInExpo,
    transitionDuration: const Duration(milliseconds: 1000),
  );
}
