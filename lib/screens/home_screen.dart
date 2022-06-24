import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/screens/listview1_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
        elevation: 0,
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
        itemBuilder: ((context, index) => ListTile(
              title: Text(AppRoutes.menuOptions[index].name),
              leading: Icon(AppRoutes.menuOptions[index].icon),
              onTap: () {
                // final route = MaterialPageRoute(
                //     builder: ((context) => const Listview1Screen()));
                // Navigator.pushReplacement(context, route);

                Navigator.pushNamed(context, AppRoutes.menuOptions[index].route);
              },
            )),
        itemCount: AppRoutes.menuOptions.length,
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
