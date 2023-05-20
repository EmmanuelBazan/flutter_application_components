import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String label;
  final String? helperText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final TextInputType keyboardType;
  final bool isPassword;
  final Map<String, String> formValues;
  final String keyValue;

  const CustomInputField({
    super.key,
    this.hintText,
    this.label = '',
    this.helperText,
    this.prefixIcon,
    this.suffixIcon,
    this.keyboardType = TextInputType.name,
    this.isPassword = false,
    required this.formValues,
    required this.keyValue,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      initialValue: '',
      obscureText: isPassword,
      keyboardType: keyboardType,
      textCapitalization: TextCapitalization.words,
      onChanged: (value) => formValues[keyValue] = value,
      validator: (value) {
        if (value == null) return 'este campo es requerdo';
        return value.length < 3 ? 'minmo de 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
          hintText: hintText,
          label: Text(label),
          helperText: helperText,
          prefixIcon: prefixIcon == null ? null : Icon(prefixIcon),
          suffixIcon: suffixIcon == null ? null : Icon(suffixIcon)),
    );
  }
}
