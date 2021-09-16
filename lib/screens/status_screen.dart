import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/palette.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.scaffoldBackground,
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, int index) {
            return ListTile(
              title: Text(
                "status",
                style: TextStyle(color: Palette.scaffoldText),
              ),
            );
          }),
    );
  }
}
