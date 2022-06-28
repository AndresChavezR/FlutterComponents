import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardTypeScreen extends StatelessWidget {
  final String image;
  final String? messaje;
  const CustomCardTypeScreen({Key? key, required this.image, this.messaje})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
      shadowColor: AppTheme.primaryColor.withOpacity(0.2),
      elevation: 10,
      child: Column(
        children: [
          FadeInImage(
              width: double.infinity,
              height: 230,
              fit: BoxFit.cover,
              placeholder: const AssetImage('assets/jar-loading.gif'),
              image: NetworkImage(image)),

              if(messaje != null)
          Container(
            alignment: AlignmentDirectional.bottomEnd,
            padding: const EdgeInsets.all(20),
            child: Text(messaje!),
          )
        ],
      ),
    );
  }
}
