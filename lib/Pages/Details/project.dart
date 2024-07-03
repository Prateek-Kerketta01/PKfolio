import 'package:flutter/material.dart';
import 'package:pk_folio/component/projectTile.dart';
import 'package:pk_folio/component/videoPlayer.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(left: 36, right: 36),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 100),
              child: Text(
                "P R O J E C T S",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontSize: 36),
              ),
            ),
            Divider(
              color: Colors.yellow,
              thickness: 5,
              endIndent: 800,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                projectTile(
                  videoPath: 'assets/videos/toDo.mov',
                  imagePath: 'assets/images/toDo.png',
                  projectName: "ToDo",
                ),
                projectTile(
                  videoPath: 'assets/videos/profile.mov',
                  imagePath: 'assets/images/intro.png',
                  projectName: "Profile",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// 'assets/videos/toDo.mov'
// 'assets/images/toDo.png'

void showVideoDialog(BuildContext context, String videoPath) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.5,
          child: VideoPlayerWidget(videoPath: videoPath),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Close'),
          ),
        ],
      );
    },
  );
}
