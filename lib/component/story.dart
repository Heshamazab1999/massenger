import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  const Story({Key? key}) : super(key: key);

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
            backgroundImage: const NetworkImage(
                "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),
          ),
          Text(
            "firstname\n lastname",
            style: TextStyle(color: Colors.black, fontSize: size.width * 0.035),
          )
        ],
      ),
    );
  }
}
