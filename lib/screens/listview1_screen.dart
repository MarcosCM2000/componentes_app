import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({Key? key}) : super(key: key);

  final options = const ['MegaMan', 'Metal Gear', 'Super Smash'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview tipo 1'),
      ),
      body: ListView(children: [
        ...options.map((e) => ListTile(
              leading: const Icon(Icons.abc_sharp),
              title: Text(e),
              trailing: const Icon(Icons.arrow_forward_ios_sharp),
            ))
      ]),
    );
  }
}
