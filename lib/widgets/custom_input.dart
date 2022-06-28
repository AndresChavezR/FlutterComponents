import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? suffixIcon;
  final TextInputType? textInputType;
  final bool? password;
  final String formProperty;
  final Map<String, dynamic> formValues;

  const CustomInputField(
      {super.key,
      this.hintText,
      this.labelText,
      this.helperText,
      this.suffixIcon,
      this.textInputType,
      this.password,
      required this.formProperty,
      required this.formValues});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: '',
      obscureText: password ?? false,
      keyboardType: textInputType,
      textCapitalization: TextCapitalization.words,
      validator: (value) {
        formValues[formProperty] = value;
        if (value == null) return 'Este campo es requerido';
        return value.length < 3 ? 'Mínimo de 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText ?? 'Hint',
        labelText: labelText,

        helperText: helperText,
        counterText: '3 carácteres',
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        icon: Icon(Icons.usb_rounded),
        // focusedBorder: OutlineInputBorder(
        //     borderSide: BorderSide(color: Colors.green)),
        // border: OutlineInputBorder(
        //     borderRadius: BorderRadius.only(
        //         bottomLeft: Radius.circular(10),
        //         bottomRight: Radius.circular(10))),
      ),
      onChanged: (value) {
        print('valor $value');
      },
    );
  }
}
