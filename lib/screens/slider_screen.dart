import 'package:flutter/material.dart';

import 'package:componentes_app/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;
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
            onChanged: _sliderEnabled
                ? ((value) {
                    _sliderValue = value;
                    setState(() {});
                  })
                : null),
        Checkbox(
            value: _sliderEnabled,
            onChanged: ((value) {
              _sliderEnabled = value ?? true;
              setState(() {});
            })),
        CheckboxListTile(
            title: const Text('Habilitar slider'),
            activeColor: AppTheme.primary,
            value: _sliderEnabled,
            onChanged: ((value) {
              _sliderEnabled = value ?? true;
              setState(() {});
            })),
        SwitchListTile.adaptive(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar slider'),
            value: _sliderEnabled,
            onChanged: ((value) {
              _sliderEnabled = value;
              setState(() {});
            })),
        const AboutListTile(),
        Expanded(
          child: SingleChildScrollView(
            child: Image(
              image: const NetworkImage(
                  'https://www.dc.com/sites/default/files/Char_Gallery_Flash_758_6055049612af35.61135649.jpg'),
              fit: BoxFit.contain,
              width: _sliderValue,
            ),
          ),
        ),
      ]),
    );
  }
}
