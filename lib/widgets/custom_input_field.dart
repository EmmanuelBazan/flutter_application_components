import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String label;
  final String? helperText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;

  const CustomInputField({
    super.key,
    this.hintText,
    this.label = '',
    this.helperText,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      onChanged: (value) {
        print('value: $value');
      },
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
