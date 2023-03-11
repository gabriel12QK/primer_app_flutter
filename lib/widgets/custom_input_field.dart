import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final IconData? suffixIcon;
  final TextInputType? textInputType;
  final bool isPassword;
  final String formProperty;
  final Map<String, dynamic> formValues;
  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.suffixIcon,
    this.textInputType,
    this.isPassword = false,
    required this.formProperty,
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autofocus: true,
        initialValue: '',
        keyboardType: textInputType,
        obscureText: isPassword,
        textCapitalization: TextCapitalization.words,
        onChanged: (value) =>formValues[formProperty] = value,
        validator: (value) {
          if (value == null) return 'Este campo es oblidatorio';
          return value.length < 3
              ? 'El minimo para este campo es de 3 caracteres'
              : null;
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          suffixIcon:
              suffixIcon == null ? null : Icon(suffixIcon), //icono al final
          //prefficIcon icono al inicio
        ));
  }
}
