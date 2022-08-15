import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:massenger/controller/base_controller.dart';
import 'package:massenger/screens/chat_screen.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
      ChatScreen(),
    ];

    return GetBuilder<HomeController>(builder: (controller) {
      return Scaffold(
          body: Obx(() => Center(
                child: screens.elementAt(controller.selectedIndex),
              )),
          bottomNavigationBar: Obx(
            () => BottomNavigationBar(
              items: [
                const BottomNavigationBarItem(
                  icon: Icon(Icons.chat),
                  label: 'chats',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Icons.video_call),
                  label: 'calls',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'People',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Icons.amp_stories),
                  label: 'Stories',
                ),
                BottomNavigationBarItem(
                  icon: controller.images != ''
                      ? Container(
                          clipBehavior: Clip.antiAlias,
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: FileImage(File(controller.images)))),
                        )
                      : const Icon(Icons.settings),
                  label: 'Setting',
                ),
              ],
              currentIndex: controller.selectedIndex,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.grey,
              onTap: (index) {
                controller.selectedIndex = index;
                print(index);
              },
            ),
          ));
    });
  }
}
