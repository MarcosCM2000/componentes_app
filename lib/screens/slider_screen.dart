import 'package:flutter/material.dart';

import 'package:componentes_app/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(
        child: Text('Slider screen'),
      )),
      body: Column(children: [
        Slider.adaptive(
            min: 50,
            max: 400,
            value: _sliderValue,
            activeColor: AppTheme.primary,
            divisions: 5,
            onChanged: ((value) {
              _sliderValue = value;
              setState(() {});
            })),
        SingleChildScrollView(
          child: Image(
            image: const NetworkImage(
                'https://www.dc.com/sites/default/files/Char_Gallery_Flash_758_6055049612af35.61135649.jpg'),
            fit: BoxFit.contain,
            width: _sliderValue,
          ),
        ),
      ]),
    );
  }
}
