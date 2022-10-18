import 'package:flutter/material.dart';
import 'package:portfolio_app/projects.dart';

import 'about.dart';
import 'home.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home': (context) => const MyHome(),
        'about': (context) => const MyAbout(),
        'project': (context) => const MyProject(),
      },
    ),
  );
}
