import 'package:flutter/material.dart';

import 'package:componentes_app/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Card Widget')),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
            imageUrl:
                'https://www.zelda.com/breath-of-the-wild/assets/media/header/Main-Day.jpg',
            name: 'Un hermoso paisaje',
          ),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
              imageUrl:
                  'https://i.guim.co.uk/img/media/8c0d89c19debb620016911adafd054daf1fd6578/60_0_1800_1080/master/1800.png?width=1200&quality=85&auto=format&fit=max&s=fd4adb8684a5ca4b0fc03d19ee6bdaa5'),
        ],
      ),
    );
  }
}
