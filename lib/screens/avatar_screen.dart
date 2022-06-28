import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar Screen'),
        actions: [
          Container(
            margin: const  EdgeInsets.all(10),
            child:  CircleAvatar(
              backgroundColor: Colors.indigo[900],
              child: const Text('AC'),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 100,
          backgroundImage: NetworkImage("https://i.blogs.es/85aa44/stan-lee/450_1000.jpg"),
        )
      ),
    );
  }
}
