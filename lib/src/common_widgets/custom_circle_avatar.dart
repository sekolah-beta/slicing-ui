import 'package:flutter/material.dart';
import 'package:slicing_ui/src/constants/theme/theme.dart';
import 'package:slicing_ui/src/features/home/user.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({super.key, required this.user});
  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: ColorTheme.orangeToPurpleGradient,
          ),
          padding: const EdgeInsets.all(3),
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: ColorTheme.neutralWhite,
            ),
            padding: const EdgeInsets.all(3),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(user.image),
            ),
          ),
        ),
        Text(user.name),
      ],
    );
  }
}
