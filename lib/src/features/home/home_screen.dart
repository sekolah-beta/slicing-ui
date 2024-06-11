import 'package:flutter/material.dart';
import 'package:slicing_ui/src/common_widgets/custom_circle_avatar.dart';
import 'package:slicing_ui/src/constants/theme/theme.dart';
import 'package:slicing_ui/src/features/home/home_posting.dart';
import 'package:slicing_ui/src/features/home/user.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/logo.png', height: 28),
        centerTitle: true,
        leading: Image.asset('assets/icons/camera.png'),
        actions: [
          Image.asset('assets/icons/send.png'),
          const SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 98,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: ColorTheme.neutralBlack.withOpacity(0.2),
                  ),
                  bottom: BorderSide(
                    color: ColorTheme.neutralBlack.withOpacity(0.2),
                  ),
                ),
              ),
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                itemBuilder: (context, index) => CustomCircleAvatar(user: kListUser[index]),
                separatorBuilder: (context, index) => const SizedBox(width: 15),
                itemCount: kListUser.length,
              ),
            ),
            ListView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: List.generate(5, (i) => const HomePosting()),
            ),
          ],
        ),
      ),
    );
  }
}
