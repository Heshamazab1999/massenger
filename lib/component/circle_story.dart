import 'package:flutter/material.dart';

class CircleStory extends StatelessWidget {
  final Function()? onTap;

  const CircleStory({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.grey.shade200,
            child: IconButton(
              onPressed: onTap,
              icon: const Icon(Icons.video_call, color: Colors.black),
            ),
          ),
          Text(
            "Start\n Call",
            style: TextStyle(color: Colors.black, fontSize: size.width * 0.035),
          )
        ],
      ),
    );
  }
}
