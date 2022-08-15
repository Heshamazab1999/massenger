import 'package:flutter/material.dart';
class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({Key? key,this.onTap}) : super(key: key);
final Function()? onTap;


  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return AppBar(
        automaticallyImplyLeading: false,
        title: Text("Chats",
            style:
            TextStyle(fontSize: size.width * 0.07, color: Colors.black)),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Builder(
            builder: (context) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.grey.shade200,
                child: Center(
                  child: IconButton(
                    icon:
                    const Icon(Icons.menu_rounded, color: Colors.black),
                    onPressed: () => Scaffold.of(context).openDrawer(),
                  ),
                ),
              ),
            )),
        actions: [
          CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey.shade200,
              child: IconButton(
                onPressed: onTap,
                icon: const Icon(
                  Icons.camera_alt,
                  color: Colors.black,
                ),
              )),
          SizedBox(width: size.width * 0.05),
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.grey.shade200,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.edit,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(width: size.width * 0.05),
        ]);
  }
}