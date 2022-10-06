import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  final Function() onPressed;

  AppBarWidget({Key? key, required this.onPressed}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: const Text("Curency Converter"),
      backgroundColor: Colors.green.shade400,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
      ),
      actions: [
        IconButton(onPressed: onPressed, icon: const Icon(Icons.logout_rounded))
      ],
    );
  }
}
