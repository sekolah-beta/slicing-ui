import 'package:flutter/material.dart';
import 'package:slicing_ui/src/common_widgets/custom_bottom_app_bar.dart';
import 'package:slicing_ui/src/features/add_photo/add_photo_screen.dart';
import 'package:slicing_ui/src/features/home/home_screen.dart';
import 'package:slicing_ui/src/features/like/like_screen.dart';
import 'package:slicing_ui/src/features/profile/profile_screen.dart';
import 'package:slicing_ui/src/features/search/search_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    const SearchScreen(),
    const AddPhotoScreen(),
    const LikeScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomAppBar(
        currentIndex: currentIndex,
        onChangedTab: (val) => setState(() => currentIndex = val),
      ),
      body: _screens[currentIndex],
    );
  }
}
