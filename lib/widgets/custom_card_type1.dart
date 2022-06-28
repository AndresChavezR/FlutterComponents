
import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCardTipe1 extends StatelessWidget {
  const CustomCardTipe1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo_album_outlined,
              color: AppTheme.primaryColor,
            ),
            title: Text('Título'),
            subtitle: Text(
                'loPMagna minim minim quis aliqua ex Et fugiat exercitation eu nisi sit labore.ea.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              TextButton(onPressed: (){}, child: const Text('Cancelar'),),
              TextButton(onPressed: (){}, child: const Text('Ok')),
            ]),
          )
        ],
      ),
    );
  }
}