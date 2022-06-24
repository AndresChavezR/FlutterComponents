import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Geaar',
    'Super Smash',
    'Final Fantasy'
  ];

  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
              'Listview Tipo 1',
            ),
            elevation: 0,
            backgroundColor: Colors.indigo,
            ),
        body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            title: Text(options[index]),
            trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.indigo,),
            onTap: () => {},
          ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: options.length,
        ));
  }
}
