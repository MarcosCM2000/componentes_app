import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField(
      {Key? key,
      this.hintText,
      this.labelText,
      this.helperText,
      this.icon,
      this.suffixIcon,
      required this.keyboardType,
      this.obscureText = false,
      required this.formProperty,
      required this.formValues})
      : super(key: key);

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType keyboardType;
  final bool obscureText;
  final String formProperty;
  final Map<String, String> formValues;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      textCapitalization: TextCapitalization.words,
      validator: (value) {
        if (value == null) return 'Campo requerido';
        return value.length < 3 ? 'Minimo de 3 letras' : null;
      },
      keyboardType: keyboardType,
      obscureText: obscureText,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          helperText: helperText,
          //suffixIcon: Icon(Icons.group_outlined)
          icon: icon == null ? null : Icon(icon),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10)))),
      onChanged: (value) {
        formValues[formProperty] = value;
      },
    );
  }
}
