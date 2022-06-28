import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _checkValue = false;

  @override
  void initState() {
    super.initState();
    print('valor del print ');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Slider and Checks')),
      body: Column(
        children: [
          Slider.adaptive(
              min: 50,
              max: 400,
              activeColor: AppTheme.primaryColor,
              value: _sliderValue,
              onChanged: _checkValue
                  ? (value) {
                      _sliderValue = value;
                      setState(() {});
                    }
                  : null),
          Checkbox(
              value: _checkValue,
              onChanged: (value) {
                _checkValue = value!;
                setState(() {});
                print('Valor del check $value');
              }),
          CheckboxListTile(
            value: _checkValue,
            onChanged: (value) {
              _checkValue = value!;
              setState(() {});
            },
            title: const Text('Bloquear'),
            activeColor: AppTheme.primaryColor,
          ),
          SwitchListTile.adaptive(
            value: _checkValue,
            onChanged: (value) {
              _checkValue = value;
              setState(() {});
            },
            title: const Text('Bloquear'),
          ),
          const AboutListTile(),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    "https://i.blogs.es/85aa44/stan-lee/450_1000.jpg"),
                width: _sliderValue,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}
