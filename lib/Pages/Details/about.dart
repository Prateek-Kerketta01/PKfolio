import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

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
            // Heading
            Container(
              margin: EdgeInsets.only(top: 100),
              child: Text(
                "A B O U T  Me",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontSize: 36),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 5,
              width: 100,
              color: Colors.yellow,
            ),

            const SizedBox(
              height: 10,
            ),

            Text(
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
                "I am a 4th-year B.Tech student with a passion for technology and a curiosity-driven mindset. Over the years, I have honed my skills in Flutter, Mongoose, and Firebase, allowing me to develop robust and efficient solutions. My enthusiasm for exploring new technologies and methodologies constantly drives me to expand my knowledge and improve my craft.\n\n" +
                    "I specialize in creating cross-platform applications using Flutter, ensuring a seamless experience across both Android and iOS devices. Additionally, I have a knack for designing and developing responsive web pages that cater to various user needs.\n\n" +
                    "Whether it’s building feature-rich mobile apps or designing engaging web interfaces, I am dedicated to delivering high-quality projects that meet and exceed expectations. Let’s create something amazing together!"),

            const SizedBox(
              height: 10,
            ),

            // Services
            Text(
              "What I Do",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontSize: 36),
            ),
            const SizedBox(
              height: 10,
            ),

            // 1st Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Icon(
                        Icons.design_services,
                        color: Colors.yellow,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("UI/UX Design",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          Text(
                            "Designing user-friendly interfaces that enhance user experience",
                            style: TextStyle(
                              color: Colors.white54,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Icon(
                        Icons.apps,
                        color: Colors.yellow,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Mobile Apps",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          Text(
                            "Developing cross-platform mobile applications using Flutter",
                            style: TextStyle(
                              color: Colors.white54,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Icon(
                        Icons.logo_dev_rounded,
                        color: Colors.yellow,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Web Development",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          Text(
                            "Creating responsive web pages that cater to various user needs",
                            style: TextStyle(
                              color: Colors.white54,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.yellow,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Photo Graphy",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          Text(
                            "Capturing moments that tell a story and evoke emotions",
                            style: TextStyle(
                              color: Colors.white54,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
