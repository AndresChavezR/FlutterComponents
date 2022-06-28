import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tarjetas'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardTipe1(),
            SizedBox(height: 10),
            CustomCardTypeScreen(image: 'https://img.freepik.com/free-vector/nature-scene-with-river-hills-forest-mountain-landscape-flat-cartoon-style-illustration_1150-37326.jpg?w=2000',messaje: 'Sint cupidatat fugiat exercitation ut.',),
            SizedBox(height: 10),
            CustomCardTypeScreen(image: 'https://cdn.pixabay.com/photo/2019/08/09/10/04/landscape-4394746_960_720.jpg'),
            SizedBox(height: 10),
            CustomCardTypeScreen(image: 'https://static.vecteezy.com/system/resources/previews/000/246/312/non_2x/mountain-lake-sunset-landscape-first-person-view-vector.jpg', messaje: 'In sint ex eu sit mollit anim exercitation veniam in do elit ut.',),
            SizedBox(height: 10),
            CustomCardTypeScreen(image: 'https://www.creativefabrica.com/wp-content/uploads/2021/06/12/mountain-landscape-illustration-design-b-Graphics-13326021-1.jpg', messaje: 'Laboris deserunt et eu magna velit sit minim sit voluptate culpa deserunt aute.',)
          ],
        ));
  }
}
