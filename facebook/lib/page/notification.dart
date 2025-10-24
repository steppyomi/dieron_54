import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: const Text('Notification'),
      titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      actions: [
        IconButton(
          icon: const Icon(Icons.more_horiz_rounded),
          onPressed: () {},),
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},),  
      ],
    ),
    body: ListView(
      children: const [
        Text( '  Today', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage('assets/profile/prof1.jpg')
          ),
          title: Text('Rdz Quatriz liked your post'),
          subtitle: Text('2 hours ago'),
          trailing: IconButton(
            icon: Icon(Icons.more_horiz_rounded),
            onPressed: null,
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage('assets/profile/prof2.jpg'),
          ),
          title: Text('Emman commented on your photo'),
          subtitle: Text('3 hours ago'),
          trailing: IconButton(
            icon: Icon(Icons.more_horiz_rounded),
            onPressed: null,
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage('assets/profile/prof3.jpg'),
          ),
          title: Text('Mark started following you'),
          subtitle: Text('5 hours ago'),
          trailing: IconButton(
            icon: Icon(Icons.more_horiz_rounded),
            onPressed: null,
          ),
        ),


        Text( '  Earlier', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),


        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage('assets/profile/prof4.jpg'),
          ),
          title: Text('Adrian sent you a friend request'),
          subtitle: Text('5 hours ago'),
          trailing: IconButton(
            icon: Icon(Icons.more_horiz_rounded),
            onPressed: null,
          ),
          ),
      ],
    ),
    );
  }
}