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
              keyboardType: TextInputType.name,
            ),
            SizedBox(
              height: 30,
            ),
            CustomInputField(
              labelText: 'Apellido',
              hintText: 'Apellido del usuario',
              icon: Icons.group_outlined,
              keyboardType: TextInputType.name,
            ),
            SizedBox(
              height: 30,
            ),
            CustomInputField(
              labelText: 'Correo',
              hintText: 'Correo del usuario',
              icon: Icons.email_outlined,
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 30,
            ),
            CustomInputField(
              labelText: 'Password',
              hintText: 'Password del usuario',
              icon: Icons.password_outlined,
              keyboardType: TextInputType.emailAddress,
              obscureText: true,
            ),
          ],
        ),
      )),
    );
  }
}
