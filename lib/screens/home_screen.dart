import 'package:flutter/material.dart';

import 'package:componentes_app/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Componentes en flutter'),
          ),
          elevation: 0,
        ),
        body: ListView.separated(
            itemBuilder: ((context, index) => ListTile(
                  leading: const Icon(Icons.access_time_filled_outlined),
                  title: const Text('Nombre de ruta'),
                  onTap: () {
                    final route = MaterialPageRoute(
                        builder: ((context) => const ListView1Screen()));
                    Navigator.push(context, route);
                  },
                )),
            separatorBuilder: ((context, index) => const Divider()),
            itemCount: 10));
  }
}