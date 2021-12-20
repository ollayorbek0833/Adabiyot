import 'package:adabiyot/Screens/Shoir.dart';
import 'package:adabiyot/Screens/startPage.dart';
import 'package:flutter/material.dart';
import 'Screens/Shoirlar.dart';

void main() {
  runApp((MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        routes: {
          "Atoiy": (context) => Atoiy(),
          "Alisher Navoiy": (context) => Alisher(),
          "Bobur Mirzo": (context) => Bobur(),
          "Abdulla Oripov": (context) => Abdulla(),
          "shoirlar": (context) => Shoirlar(),
          "Mavlono Lutfiy": (context) => Lutfiy(),
        },
        home: SafeArea(
          child: StartPage(),
        ));
  }
}
