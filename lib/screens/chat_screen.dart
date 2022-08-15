import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:massenger/component/appbar_widget.dart';
import 'package:massenger/component/chat_card_widget.dart';
import 'package:massenger/component/circle_story.dart';
import 'package:massenger/component/search_text_field.dart';
import 'package:massenger/component/story.dart';
import 'package:massenger/controller/base_controller.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GetBuilder<HomeController>(builder: (controller) {
      return SafeArea(
        child: Scaffold(
            drawer: const Drawer(),
            appBar: CustomAppbar(
              onTap: () {
                controller.chooseProfileImage();
              },
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const Center(child: TextFieldWidget()),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: size.height * 0.135,
                      width: size.width,
                      child: ListView.builder(
                          padding: EdgeInsets.zero,
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 10,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (ctx, index) {
                            if (index == 0) {
                              return CircleStory(
                                onTap: () {
                                  controller.chooseProfileImage();
                                },
                              );
                            } else {
                              return const Story();
                            }
                          }),
                    ),
                  ),
                  ListView.builder(
                      itemCount: 20,
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      padding: EdgeInsets.zero,
                      itemBuilder: (ctx, index) => const ChatCardWidget())
                ],
              ),
            )),
      );
    });
  }
}
