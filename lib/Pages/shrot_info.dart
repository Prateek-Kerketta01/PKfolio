import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:pk_folio/Theme/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class ShrotInfo extends StatelessWidget {
  const ShrotInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16),
      child: Container(
        padding: EdgeInsets.only(left: 25, right: 25, top: 50, bottom: 25),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            // icon
            Container(
              height: 100,
              width: 100,
              padding: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset("assets/images/male.png"),
            ),

            SizedBox(
              height: 20,
            ),

            // Name
            Text(
              "Prateek Kerketta",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),

            SizedBox(
              height: 10,
            ),

            Row(
              children: [
                Text(
                  "Theme",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                CupertinoSwitch(
                  value: Provider.of<ThemeProvider>(context, listen: false)
                      .isDarkMode,
                  onChanged: (value) =>
                      Provider.of<ThemeProvider>(context, listen: false)
                          .toggleTheme(),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),

            Container(
              height: 1,
              width: 200,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            SizedBox(
              height: 40,
            ),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // mail
                  Row(
                    children: [
                      Icon(
                        Icons.mail,
                        color: Colors.deepPurple,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Email",
                            style: TextStyle(
                                color: Theme.of(context)
                                    .colorScheme
                                    .inversePrimary,
                                fontWeight: FontWeight.bold),
                          ),
                          Text("prateekker3176@gmail.com",
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inversePrimary))
                        ],
                      )
                    ],
                  ),
                  Flexible(
                    child: SizedBox(
                      height: 40,
                    ),
                  ),

                  // contact
                  Row(
                    children: [
                      Icon(
                        Icons.phone_android,
                        color: Colors.deepPurple,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Phone",
                            style: TextStyle(
                                color: Theme.of(context)
                                    .colorScheme
                                    .inversePrimary,
                                fontWeight: FontWeight.bold),
                          ),
                          Text("+91 9304192873",
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inversePrimary))
                        ],
                      )
                    ],
                  ),
                  Flexible(
                    child: SizedBox(
                      height: 40,
                    ),
                  ),

                  // Birthday
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_month,
                        color: Colors.deepPurple,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Birthday",
                            style: TextStyle(
                                color: Theme.of(context)
                                    .colorScheme
                                    .inversePrimary,
                                fontWeight: FontWeight.bold),
                          ),
                          Text("March 27,2002",
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inversePrimary))
                        ],
                      )
                    ],
                  ),
                  Flexible(
                    child: SizedBox(
                      height: 40,
                    ),
                  ),

                  // location
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.deepPurple,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Address",
                            style: TextStyle(
                                color: Theme.of(context)
                                    .colorScheme
                                    .inversePrimary,
                                fontWeight: FontWeight.bold),
                          ),
                          Text("Paghwara, Punjab \nIndia",
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inversePrimary))
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      launchUrl(Uri.parse(
                          'https://www.instagram.com/pratikkerketta/'));
                    },
                    icon: Icon(
                      FeatherIcons.instagram,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    )),
                IconButton(
                    onPressed: () {
                      launchUrl(Uri.parse('https://x.com/PrateekKerket11'));
                    },
                    icon: Icon(Icons.flutter_dash,
                        color: Theme.of(context).colorScheme.inversePrimary)),
                IconButton(
                    onPressed: () {
                      launchUrl(
                          Uri.parse('https://github.com/Prateek-Kerketta01'));
                    },
                    icon: Icon(
                      FeatherIcons.github,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
