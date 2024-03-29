import 'package:flutter/material.dart';

import 'package:componentes_app/theme/app_theme.dart';

class ListView2Screen extends StatelessWidget {
  const ListView2Screen({Key? key}) : super(key: key);

  final options = const ['MegaMan', 'Metal Gear', 'Super Smash'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Listview tipo 2'),
        ),
      ),
      body: ListView.separated(
          itemBuilder: ((_, index) => ListTile(
                leading: const Icon(Icons.abc_sharp),
                title: Text(options[index]),
                trailing: const Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: AppTheme.primary,
                ),
                onTap: () {
                  final game = options[index];
                  print(game);
                },
              )),
          separatorBuilder: ((_, __) => const Divider()),
          itemCount: options.length),
    );
  }
}
