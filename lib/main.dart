import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musicplayergetx/pages/songpage.dart';
import 'package:musicplayergetx/config/theme.dart';
// import 'package:musicplayergetx/pages/splashscreens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: darkTheme,
      home: const SongPage(),
    
    );
  }
}


