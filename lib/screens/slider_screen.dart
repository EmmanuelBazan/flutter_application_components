import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 10;
  bool _checkValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Sliders and checks')),
        body: Column(
          children: [
            Slider(
                min: 10,
                max: 400,
                value: _sliderValue,
                onChanged: (value) {
                  if (_checkValue) {
                    setState(() {
                      _sliderValue = value;
                    });
                  }
                }),
            // Checkbox(
            //     value: _checkValue,
            //     onChanged: (value) {
            //       setState(() {
            //         _checkValue = value ?? true;
            //       });
            //     }),
            CheckboxListTile(
                title: const Text('Habilitar slider'),
                value: _checkValue,
                onChanged: (value) {
                  setState(() {
                    _checkValue = value ?? true;
                  });
                }),
            // Switch(
            //     value: _checkValue,
            //     onChanged: (value) {
            //       setState(() {
            //         _checkValue = value;
            //       });
            //     }),
            SwitchListTile(
                title: const Text('Habilitar slider'),
                value: _checkValue,
                onChanged: (value) {
                  setState(() {
                    _checkValue = value;
                  });
                }),
            const AboutListTile(),
            Image(
              image: const NetworkImage(
                  'https://static.wikia.nocookie.net/ssbb/images/a/a5/Kirby_en_Kirby_Triple_Deluxe.png/revision/latest?cb=20140110163651&path-prefix=es'),
              fit: BoxFit.contain,
              width: _sliderValue,
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ));
  }
}
