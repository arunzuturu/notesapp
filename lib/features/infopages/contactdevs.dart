// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:companion_rebuild/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_octicons/flutter_octicons.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components/custom_appbar.dart';

class ContactDevs extends StatelessWidget {
  const ContactDevs({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // ignore: duplicate_ignore
    return Scaffold(
      appBar: CustomAppBar(title: 'Developers'),
      // ignore: prefer_const_constructors
      body: Padding(
        padding:
            EdgeInsets.only(left: size.width * 0.05, right: size.width * 0.05),
        child: Column(
          children: [
            Spacer(),
            SizedBox(
              height: size.height * 0.3,
              width: size.width * 0.9,
              child: Container(
                decoration: BoxDecoration(
                    // color: appAccentColor.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(colors: [
                      appAccentColor.withOpacity(0.8),
                      appAccentColor.withOpacity(0.2),
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight)),

                // color: appAccentColor.withOpacity(0.8),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: size.height * 0.08,
                            width: size.width * 0.4,
                          ),
                          Text(
                            'Tanishq Agarwal',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 35),
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('tanishq@lightheads.org'),
                          ),
                          IconButton(
                            onPressed: () {
                              const url = 'https://github.com/tanishq5414';
                              launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
                            },
                            icon: Icon(OctIcons.mark_github_16),
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Spacer(),
            SizedBox(
              height: size.height * 0.3,
              width: size.width * 0.9,
              child: Container(
                decoration: BoxDecoration(
                    // color: appAccentColor.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(colors: [
                      appAccentColor.withOpacity(0.8),
                      appAccentColor.withOpacity(0.2),
                    ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: size.height * 0.08,
                            width: size.width * 0.4,
                          ),
                          Text(
                            'Kaamil Mirza',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 35),
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('kaamil@lightheads.org'),
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  const url = 'https://github.com/kaamilmirza';
                                  launchUrl(Uri.parse(url),
                                      mode: LaunchMode.externalApplication);
                                },
                                padding: EdgeInsets.zero,
                                icon: Icon(OctIcons.mark_github_16),
                                color: Colors.white,
                              ),
                              InkWell(
                                  onTap: () {
                                    const url =
                                        'https://medium.com/@kaamil.mirza.2002';
                                    launchUrl(Uri.parse(url),
                                        mode: LaunchMode.externalApplication);
                                  },
                                  child: Image(
                                    image: AssetImage(
                                        'assets/logo/mediumlogo.png'),
                                    height: 30,
                                    width: 30,
                                  )),
                              SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  const url =
                                      'https://www.linkedin.com/in/kaamil-mirza/';
                                  launchUrl(Uri.parse(url),
                                      mode: LaunchMode.externalApplication);
                                },
                                child: Image(
                                  image: AssetImage(
                                      'assets/logo/linkedinlogo.png'),
                                  height: 30,
                                  width: 30,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Spacer(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
