import 'package:flutter/material.dart';
import 'package:slicing_ui/src/common_widgets/custom_circle_avatar.dart';
import 'package:slicing_ui/src/constants/constants.dart';
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
        centerTitle: true,
        title: Image.asset('assets/logo.png', height: 28),
        leading: Image.asset('assets/icons/camera.png'),
        actions: [
          Image.asset('assets/icons/send.png'),
          const SizedBox(width: 10),
        ],
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: ColorTheme.neutral75Gray.withOpacity(0.2)),
                bottom: BorderSide(color: ColorTheme.neutral75Gray.withOpacity(0.2)),
              ),
            ),
            height: 100,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const SizedBox(width: 15),
              itemCount: kListUser.length,
              itemBuilder: (context, index) => Container(
                margin: EdgeInsets.only(left: index == 0 ? 8 : 0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomCircleaAvatar(image: kListUser[index].image),
                    Text(kListUser[index].name, style: FontTheme.subtitle1),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
