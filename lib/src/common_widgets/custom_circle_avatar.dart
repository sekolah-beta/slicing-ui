import 'package:flutter/material.dart';
import 'package:slicing_ui/src/constants/constants.dart';

class CustomCircleaAvatar extends StatelessWidget {
  const CustomCircleaAvatar({super.key, required this.image, this.withBorder = true});
  final String image;
  final bool withBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: ColorTheme.orangeToPurpleGradient, shape: BoxShape.circle),
      padding: const EdgeInsets.all(2),
      child: Container(
        decoration: const BoxDecoration(color: ColorTheme.neutralWhite, shape: BoxShape.circle),
        padding: const EdgeInsets.all(3),
        child: CircleAvatar(
          backgroundImage: AssetImage(image),
          radius: 30,
        ),
      ),
    );
  }
}
