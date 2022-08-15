import 'package:flutter/material.dart';

class ChatCardWidget extends StatelessWidget {
  const ChatCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ListTile(
      subtitle: Text(
        "Message",
        style: TextStyle(
            color: Colors.black.withOpacity(0.3), fontSize: size.width * 0.035),
      ),
      title: Text(
        "Name",
        style: TextStyle(
            color: Colors.black.withOpacity(0.5), fontSize: size.width * 0.038),
      ),
      leading: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.grey.shade200,
        backgroundImage: const NetworkImage(
            "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),
      ),
      trailing: CircleAvatar(
        radius: 8,
        backgroundColor: Colors.grey.shade200,
        backgroundImage: const NetworkImage(
            "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),
      ),
    );
  }
}
