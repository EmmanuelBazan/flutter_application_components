import 'package:flutter/material.dart';
import 'package:flutter_application_components/themes/app_theme.dart';

class CustomCard1 extends StatelessWidget {
  const CustomCard1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        const ListTile(
          leading: Icon(
            Icons.photo_album,
            color: AppTheme.primary,
          ),
          title: Text('Soy un titulo'),
          subtitle: Text(
              'Nulla cillum excepteur in incididunt laboris id magna cupidatat. Esse qui veniam tempor consequat laborum esse duis magna labore dolore. Commodo magna adipisicing sit fugiat qui magna occaecat. Ipsum laboris consectetur officia ut. Officia ullamco proident nostrud occaecat non occaecat voluptate dolor.'),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('ok'),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
