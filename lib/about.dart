import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MyAbout extends StatefulWidget {
  const MyAbout({Key? key}) : super(key: key);

  @override
  State<MyAbout> createState() => _MyAboutState();
}

class _MyAboutState extends State<MyAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: Container(
        margin: const EdgeInsets.only(top: 20),
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
                  top: MediaQuery.of(context).size.height * 0.55),
              child: Column(
                children: [
                  const Text(
                    'Hello I am',
                    style: TextStyle(
                      fontFamily: 'Soho',
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Nihad Prakarsh',
                    style: TextStyle(
                      fontFamily: 'Soho',
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 3),
                  const Text(
                    'Flutter Developer',
                    style: TextStyle(
                        fontSize: 20, color: Colors.white, fontFamily: 'Soho'),
                    // fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 100,
                    height: 40,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                      onPressed: () {},
                      child: const Text('Hire Me',
                          style: TextStyle(
                            fontFamily: 'Soho',
                            color: Colors.black,
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          final Uri hyperlink = Uri.parse(
                              'https://www.instagram.com/nihadprakarsh/');
                          launchUrl(hyperlink);
                        },
                        icon: const Icon(
                          FontAwesomeIcons.instagram,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          final Uri hyperlink = Uri.parse(
                              'https://www.linkedin.com/in/nihadprakarsh/');
                          launchUrl(hyperlink);
                        },
                        icon: const Icon(
                          FontAwesomeIcons.linkedin,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          final Uri hyperlink =
                              Uri.parse('https://github.com/nihadprakarsh');
                          launchUrl(hyperlink);
                        },
                        icon: const Icon(
                          FontAwesomeIcons.github,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          final Uri hyperlink =
                              Uri.parse('https://twitter.com/im_nihad');
                          launchUrl(hyperlink);
                        },
                        icon: const Icon(
                          FontAwesomeIcons.twitter,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          final Uri hyperlink = Uri.parse(
                              'https://www.instagram.com/nihadprakarsh/');
                          launchUrl(hyperlink);
                        },
                        icon: const Icon(
                          FontAwesomeIcons.google,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
