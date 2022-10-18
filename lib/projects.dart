import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MyProject extends StatefulWidget {
  const MyProject({Key? key}) : super(key: key);

  @override
  State<MyProject> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject> {
  projetCard(lang, title, description, star, url) {
    final Uri hyperlink = Uri.parse(url);
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 210,
      child: Card(
        color: const Color(0xff262628),
        child: Container(
          margin: const EdgeInsets.only(left: 20, top: 30, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                lang,
                style: const TextStyle(
                  fontFamily: 'Soho',
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                title,
                style: const TextStyle(
                    fontFamily: 'Soho',
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                description,
                style: const TextStyle(
                    color: Colors.white70, fontSize: 16, fontFamily: 'Soho'),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.star,
                      color: Colors.white70,
                      size: 18,
                    ),
                    onPressed: () {},
                    // splashColor: Colors.blue,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    star,
                    style: const TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                  Expanded(child: Container()),
                  IconButton(
                    onPressed: () {
                      launchUrl(hyperlink);
                    },
                    icon: const Icon(
                      FontAwesomeIcons.github,
                      color: Colors.white,
                    ),
                    splashColor: Colors.deepPurple,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff1e1e1e),
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color(0xff252525),
        title: const Text('Projects', style: TextStyle(fontFamily: 'Soho')),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(bottom: 20, top: 10),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              projetCard(
                  'C++',
                  'Sudoku Solver',
                  'Using Recursion & Backtracking',
                  '0',
                  'https://github.com/nihadprakarsh/Sudoku-Solver-using-backtracking-main'),
              projetCard('C', 'DSA Library', 'Library Implementation', '0',
                  'https://github.com/nihadprakarsh/DSA-Library-for-C-main'),
              projetCard('Flutter', 'Portfolio App', 'Final App', '0',
                  'https://github.com/nihadprakarsh'),
            ],
          ),
        ),
      ),
    );
  }
}
