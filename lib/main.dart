import 'package:animation_challange/pages/home/view.dart';
import 'package:animation_challange/pages/menu_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final String date = "qeeee";

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider<String>(
      create: (context)=> date,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MenuPage(),
      ),
    );
  }
}
