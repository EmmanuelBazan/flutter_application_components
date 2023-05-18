import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bon Jovi'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundColor: Colors.indigo[900],
              child: Text('BJ'),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
            maxRadius: 110,
            backgroundImage: NetworkImage(
                'https://static.wikia.nocookie.net/doblaje/images/6/6f/Jon_Bon_Jovi_-_actual.jpg/revision/latest?cb=20210303060318&path-prefix=es')),
      ),
    );
  }
}
