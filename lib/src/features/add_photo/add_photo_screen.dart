import 'package:flutter/material.dart';

class AddPhotoScreen extends StatefulWidget {
  const AddPhotoScreen({super.key});

  @override
  State<AddPhotoScreen> createState() => _AddPhotoScreenState();
}

class _AddPhotoScreenState extends State<AddPhotoScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('AddPhoto'),
      ),
    );
  }
}
