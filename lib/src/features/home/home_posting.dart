import 'package:flutter/material.dart';

class HomePosting extends StatefulWidget {
  const HomePosting({super.key});

  @override
  State<HomePosting> createState() => _HomePostingState();
}

class _HomePostingState extends State<HomePosting> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Column(
        children: [
          // profil dan nama user
          Container(
            padding: const EdgeInsets.all(8),
            child: const Row(
              children: [
                CircleAvatar(backgroundImage: AssetImage('assets/profil2.png')),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('joshua_i'),
                    Text('Tokyo, Japan'),
                  ],
                ),
                Spacer(),
                Icon(Icons.more_horiz)
              ],
            ),
          ),

          // image
          Expanded(
            child: Image.asset(
              'assets/post1.png',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),

          // icon menu

          // user's like

          // caption
        ],
      ),
    );
  }
}
