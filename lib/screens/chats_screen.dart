import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp_clone/constants/palette.dart';
import 'package:whatsapp_clone/data/data.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.scaffoldBackground,
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, int index) {
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 7),
              color: Palette.scaffoldBackground,
              child: ListTile(
                leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(users[index].imgUrl)),
                title: Text(
                  users[index].name,
                  style: const TextStyle(
                      color: Palette.scaffoldText,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                subtitle: Text(
                  users[index].description,
                  style: const TextStyle(
                      color: Palette.scaffoldText, fontWeight: FontWeight.w300),
                ),
                trailing: Text(
                  users[index].time,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w300),
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.message),
        backgroundColor: Palette.tabBar,
        onPressed: () {},
      ),
    );
  }
}
