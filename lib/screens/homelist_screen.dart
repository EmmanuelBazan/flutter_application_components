import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeListScreen extends StatelessWidget {
  const HomeListScreen({Key? key}) : super(key: key);

  final gamesList = const [
    'carros',
    'disparos',
    'deportes',
    'canciones',
    'aventura'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home List'),
          systemOverlayStyle: SystemUiOverlayStyle.light,
          backgroundColor: Colors.indigo,
        ),
        body: ListView.separated(
          itemCount: gamesList.length,
          separatorBuilder: (_, __) => const Divider(),
          itemBuilder: (context, index) => ListTile(
            title: Text(gamesList[index]),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
        ));
  }
}
