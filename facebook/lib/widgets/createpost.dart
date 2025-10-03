import 'package:flutter/material.dart';

class CreatePost extends StatelessWidget {
  final VoidCallback? onPostcreated;
  const CreatePost({super.key, this.onPostcreated});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPostcreated,
      leading: CircleAvatar(
        backgroundImage: AssetImage("assets/profile/prof5.jpg"),
      ),
      title: TextField(
        decoration: InputDecoration(
        hintText: "What's in your ****",
        border: InputBorder.none,
        ),
      ),
      trailing: Icon(Icons.image),
    );
  }
}