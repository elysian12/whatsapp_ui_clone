import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp_clone/constants/palette.dart';
import 'package:whatsapp_clone/screens/calls_screen.dart';
import 'package:whatsapp_clone/screens/chats_screen.dart';
import 'package:whatsapp_clone/screens/status_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Palette.scaffoldBackground,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Palette.appBar,
          title: const Text(
            'WhatsApp',
            style: TextStyle(
              color: Palette.appBarText,
              fontSize: 24,
              letterSpacing: -0.5,
              fontWeight: FontWeight.w500,
            ),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
          bottom: const TabBar(
            // isScrollable: true,
            indicatorColor: Palette.tabBar,
            indicatorWeight: 3.0,
            labelColor: Palette.tabBar,
            labelStyle: TextStyle(fontWeight: FontWeight.w600),
            unselectedLabelColor: Palette.appBarText,
            //indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              // Tab(child: Icon(Icons.camera_enhance)),
              Tab(
                child: Text(
                  'CHATS',
                ),
              ),
              Tab(child: Text('STATUS')),
              Tab(child: Text('CALLS')),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ChatScreen(),
            StatusScreen(),
            CallScreen(),
          ],
        ),
      ),
    );
  }
}
