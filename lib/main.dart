import 'package:flutter/material.dart';

import 'Screens/Jobs.dart';
import 'Screens/JobDescription.dart';
import 'Screens/EnterScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
        routes: {
          JobsScreen.id: (context) => JobsScreen(),
          JobDescription.id: (context) => JobDescription(),
          HomePage.id: (context) => HomePage(),

        },
      home: HomePage(),
    );
  }
}


