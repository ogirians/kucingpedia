import 'package:flutter/material.dart';
import 'package:kucingpedia/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kucing Pedia',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[50],
      ),
      home: const MyHomePage(title: 'KucingPedia App'),
    );
  }
}
