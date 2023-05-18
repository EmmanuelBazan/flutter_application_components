import 'package:flutter/material.dart';
import 'package:flutter_application_components/themes/app_theme.dart';

class CustomCard2 extends StatelessWidget {
  final String imageUrl;
  final String? name;

  const CustomCard2({super.key, required this.imageUrl, this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      shadowColor: AppTheme.primary.withOpacity(0.5),
      elevation: 10,
      child: Column(children: [
        FadeInImage(
          placeholder: AssetImage('assets/loading_gif.gif'),
          image: NetworkImage(imageUrl),
          width: double.infinity,
          height: 230,
          fit: BoxFit.cover,
          fadeInDuration: Duration(milliseconds: 300),
        ),
        if (name != null)
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: Text(name ?? 'no title'),
          )
      ]),
    );
  }
}
