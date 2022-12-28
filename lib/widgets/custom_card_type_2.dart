import 'package:flutter/material.dart';
import 'package:componentes_app/theme/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.7),
      child: Column(children: [
        const FadeInImage(
          image: NetworkImage(
              'https://www.zelda.com/breath-of-the-wild/assets/media/header/Main-Day.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          width: double.infinity,
          height: 230,
          fit: BoxFit.cover,
          fadeInDuration: Duration(milliseconds: 300),
        ),
        Container(
          alignment: AlignmentDirectional.centerEnd,
          padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
          child: const Text('Un hermoso paisaje'),
        )
      ]),
    );
  }
}
