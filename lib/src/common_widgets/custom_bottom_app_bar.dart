import 'package:flutter/material.dart';
import 'package:slicing_ui/src/constants/constants.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({super.key, required this.currentIndex, required this.onChangedTab});
  final int currentIndex;
  final Function(int) onChangedTab;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorTheme.neutral50Gray,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () => onChangedTab.call(0),
            icon: currentIndex == 0 ? const Icon(Icons.home) : const Icon(Icons.home_outlined),
          ),
          IconButton(
            onPressed: () => onChangedTab.call(1),
            icon: currentIndex == 1 ? const Icon(Icons.search, size: 28) : const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () => onChangedTab.call(2),
            icon: currentIndex == 2 ? const Icon(Icons.add_box) : const Icon(Icons.add_box_outlined),
          ),
          IconButton(
            onPressed: () => onChangedTab.call(3),
            icon: currentIndex == 3 ? const Icon(Icons.favorite) : const Icon(Icons.favorite_border),
          ),
          GestureDetector(onTap: () => onChangedTab.call(4), child: Image.asset('assets/profil1.png', width: 23)),
        ],
      ),
    );
  }
}
