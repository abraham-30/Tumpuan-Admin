import 'package:flutter/material.dart';
import 'package:tumpuan/login_page.dart';
import 'package:tumpuan/palette/palette.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:'Tumpuan - login',
      theme: ThemeData(
        scaffoldBackgroundColor: Pallete.whiteColor,
      ),
      home: const LoginPage(),
    );
  }
}