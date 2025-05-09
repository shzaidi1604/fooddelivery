import 'package:flutter/material.dart';

class MyDrawerTile extends StatelessWidget {
  String text;
  IconData? icon;
  Function()? onTap;

  MyDrawerTile({
    super.key,
    required this.icon,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: ListTile(
        title: Text(
          text,
          style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
        ),
        leading: Icon(icon, color: Theme.of(context).colorScheme.inversePrimary),
        onTap: onTap,
      ),
    );
  }
}
