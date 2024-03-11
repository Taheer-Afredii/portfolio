import 'package:flutter/material.dart';
import 'package:tahir_portfolio/view/projects/components/image_viewer.dart';

import '../../../model/project_model.dart';

class ProjectLinks extends StatelessWidget {
  final int index;
  const ProjectLinks({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Row(
        //   children: [
        //     const Text('Check on Github',style: TextStyle(color: Colors.white),overflow: TextOverflow.ellipsis),
        //     IconButton(onPressed: () {launchUrl(Uri.parse(projectList[index].link));}, icon: SvgPicture.asset('assets/icons/github.svg')),
        //   ],
        // ),
        // const Spacer(),
        TextButton(
            onPressed: () {
              // launchUrl(Uri.parse(projectList[index].link!));
              projectList[index].isList == false
                  ? ImageViewer(context, projectList[index].image!)
                  : getDialogue(projectList[index].imageList!);
            },
            child: const Text(
              'View More>>',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                  fontSize: 10),
            ))
      ],
    );
  }
}
