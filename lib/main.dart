import 'package:flutter/material.dart';
import 'package:flutter_insta_clone/responsive/mobile_screen_layout.dart';
import 'package:flutter_insta_clone/responsive/responsive_layout_screen.dart';
import 'package:flutter_insta_clone/responsive/web_screen_layout.dart';
import 'package:flutter_insta_clone/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Instagram clone',
        // theme: ThemeData(
        //   useMaterial3: true,
        // ),
        theme: ThemeData.dark()
            .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
        home: const ResponsiveLayout(
            mobileScreenLayout: MobileScreenLayout(),
            webScreenLayout: WebScreenLayout()));
  }
}
