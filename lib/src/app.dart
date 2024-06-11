import 'package:flutter/material.dart';
import 'package:slicing_ui/src/constants/constants.dart';
import 'package:slicing_ui/src/features/main/main_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Slicing UI',
      theme: ThemeData(
        scaffoldBackgroundColor: ColorTheme.neutralWhite,
        appBarTheme: const AppBarTheme(backgroundColor: ColorTheme.neutral50Gray),
      ),
      home: const MainScreen(),
    );
  }
}
