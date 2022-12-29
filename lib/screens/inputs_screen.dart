import 'package:flutter/material.dart';
import 'package:componentes_app/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //  Manejar key para referencia de widgets
    final myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'first_name': 'Marcos',
      'last_name': 'Calderon',
      'email': 'marcos@inland',
      'password': '123',
      'role': 'Admin'
    };
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Inputs y forms'),
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
          key: myFormKey,
          child: Column(
            children: [
              CustomInputField(
                labelText: 'Nombre',
                hintText: 'Nombre del usuario',
                icon: Icons.group_outlined,
                keyboardType: TextInputType.name,
                formProperty: 'first_name',
                formValues: formValues,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomInputField(
                labelText: 'Apellido',
                hintText: 'Apellido del usuario',
                icon: Icons.group_outlined,
                keyboardType: TextInputType.name,
                formProperty: 'last_name',
                formValues: formValues,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomInputField(
                labelText: 'Correo',
                hintText: 'Correo del usuario',
                icon: Icons.email_outlined,
                keyboardType: TextInputType.emailAddress,
                formProperty: 'email',
                formValues: formValues,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomInputField(
                labelText: 'Password',
                hintText: 'Password del usuario',
                icon: Icons.password_outlined,
                keyboardType: TextInputType.emailAddress,
                obscureText: true,
                formProperty: 'password',
                formValues: formValues,
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    // Desactivar teclado
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (!myFormKey.currentState!.validate()) {
                      print('Formulario no valido');
                      return;
                    }
                    print(formValues);
                  },
                  child: const SizedBox(
                      width: double.infinity,
                      child: Center(child: Text('Guardar'))))
            ],
          ),
        ),
      )),
    );
  }
}
