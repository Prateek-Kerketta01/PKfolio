import 'package:flutter/material.dart';
import 'package:pk_folio/Pages/Details/project.dart';

class projectTile extends StatelessWidget {
  final String videoPath;
  final String imagePath;
  final String projectName;
  projectTile(
      {super.key,
      required this.videoPath,
      required this.imagePath,
      required this.projectName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showVideoDialog(context, videoPath),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(20)),
            height: 200,
            width: 400,
            child: Center(
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            projectName,
            style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                fontWeight: FontWeight.bold,
                fontSize: 24),
          ),
        ],
      ),
    );
  }
}
