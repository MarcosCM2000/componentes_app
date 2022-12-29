import 'package:flutter/material.dart';
import 'package:componentes_app/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Inputs y forms'),
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: const [
            CustomInputField(
              labelText: 'Nombre',
              hintText: 'Nombre del usuario',
              icon: Icons.group_outlined,
            )
          ],
        ),
      )),
    );
  }
}
