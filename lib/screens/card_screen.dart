import 'package:flutter/material.dart';
import 'package:flutter_application_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Card widget')),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          children: const [CustomCard1()],
        ));
  }
}
