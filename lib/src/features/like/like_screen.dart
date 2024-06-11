import 'package:flutter/material.dart';

class LikeScreen extends StatefulWidget {
  const LikeScreen({super.key});

  @override
  State<LikeScreen> createState() => _LikeScreenState();
}

class _LikeScreenState extends State<LikeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const TabBar(
            tabs: [
              Tab(text: 'Following'),
              Tab(text: 'You'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text("Following")),
            Center(child: Text("You")),
          ],
        ),
      ),
    );
  }
}
