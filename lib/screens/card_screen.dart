import 'package:flutter/material.dart';
import 'package:flutter_application_components/widgets/custom_card_2.dart';
import 'package:flutter_application_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Card widget')),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          children: const [
            CustomCard1(),
            SizedBox(
              height: 10,
            ),
            CustomCard2(
                imageUrl:
                    'https://d150u0abw3r906.cloudfront.net/wp-content/uploads/2021/10/image2-2-1024x649.png',
                name: 'Fotografia tomada por Rodrigo'),
            SizedBox(
              height: 10,
            ),
            CustomCard2(
              imageUrl:
                  'https://media.istockphoto.com/id/1296913338/es/foto/atardecer-en-sonora.jpg?s=612x612&w=0&k=20&c=IVS28cz2egp2BstXgUI-nfWnjS_F1ZL1oJAixCC55Sc=',
            ),
            SizedBox(
              height: 10,
            ),
            CustomCard2(
                imageUrl:
                    'https://static.nationalgeographic.co.uk/files/styles/image_3200/public/mountain-range-appenzell-switzerland_0.jpg?w=1900&h=1267',
                name: 'Fotografia tomada por Don Silverio'),
          ],
        ));
  }
}
