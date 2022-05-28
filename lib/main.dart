import 'package:flutter/material.dart';

import 'flash_message_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Flutter Way',
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFEFEFEF),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 15),
            primary: const Color(0xff004e32),
          ),
        ),
      ),
      home: const FlashMessageScreen(),
    );
  }
}

// "Hello, Im (Iqrar Ijaz) a Flutter Developer."
// color:const Color(0xff801336)
// color: const Color(0xFFC72c41),