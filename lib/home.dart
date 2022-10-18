import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:portfolio_app/about.dart';
import 'package:portfolio_app/projects.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  myachv(var number, var type) {
    return (Row(
      children: [
        Text(number,
            style: const TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, fontFamily: "Soho")),
        Container(
          margin: const EdgeInsets.only(top: 12, left: 2),
          child: Text(type),
        )
      ],
    ));
  }

  mySpec(var icon, var tech) {
    return Container(
      margin: const EdgeInsets.only(top: 0),
      width: 105,
      height: 115,
      child: Card(
        margin: const EdgeInsets.all(0),
        color: const Color(0xff252525),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        // ignore: avoid_unnecessary_containers
        child: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              tech,
              style: const TextStyle(
                fontFamily: 'Soho',
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ],
        )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: PopupMenuButton(
          color: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          ),
          icon: const Icon(Icons.menu),
          itemBuilder: (context) => [
            PopupMenuItem(
              value: 1,
              child: TextButton(
                child: const Text(
                  'Projects',
                  style: TextStyle(
                    fontFamily: 'Soho',
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  log("project pressed");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyProject(),
                    ),
                  );
                },
              ),
            ),
            PopupMenuItem(
              value: 2,
              child: TextButton(
                child: const Text(
                  'About Me',
                  style: TextStyle(fontFamily: 'Soho', color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyAbout(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
          snap: true,
          snappings: [0.38, 0.7, 1.0],
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        body: Container(
          margin: const EdgeInsets.only(top: 0),
          child: Stack(
            children: [
              // ignore: avoid_unnecessary_containers
              Container(
                margin: const EdgeInsets.only(top: 15),
                child: ShaderMask(
                  shaderCallback: (rect) {
                    return const LinearGradient(
                            begin: Alignment.center,
                            end: Alignment.bottomCenter,
                            colors: [Colors.black, Colors.transparent])
                        .createShader(
                            Rect.fromLTRB(0, 0, rect.width, rect.height));
                  },
                  blendMode: BlendMode.dstIn,
                  child: Image.asset('assets/image.jpeg'),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.49),
                child: Column(
                  children: const [
                    Text(
                      'Nihad Prakarsh',
                      style: TextStyle(
                        fontFamily: 'Soho',
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 3),
                    Text('Flutter Developer',
                        style: TextStyle(
                          fontFamily: 'Soho',
                          fontSize: 20,
                          color: Colors.white,
                        )
                        // fontWeight: FontWeight.bold),
                        ),
                  ],
                ),
              ),
            ],
          ),
        ),
        builder: (context, state) {
          return Container(
            margin: const EdgeInsets.only(left: 25, right: 25, top: 25),
            height: 500,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      myachv('3rd', 'Year'),
                      myachv('EEE', '2024'),
                      myachv('5', 'Projects'),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text('Technical Skills',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mySpec(Icons.code, 'C++'),
                          mySpec(Icons.android, 'Android'),
                          mySpec(Icons.apple, 'iOS'),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mySpec(Icons.code_rounded, 'Dart'),
                          mySpec(Icons.code, 'Ruby'),
                          mySpec(Icons.code, 'Java'),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mySpec(Icons.code, 'GIT'),
                          mySpec(Icons.code, 'GitHub'),
                          mySpec(Icons.code, 'C'),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
