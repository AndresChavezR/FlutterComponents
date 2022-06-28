import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/widgets.dart' show CustomInputField;

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> formValues = {
      'firstName': 'Andrés',
      'lastName': 'Chavez',
      'email': 'andres@email.com',
      'password': '1234567',
      'role': 'Admin',
    };
    final GlobalKey<FormState> myFromKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(title: Text('Fomularios e inputs')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFromKey,
            child: Column(
              children: [
                CustomInputField(
                  hintText: 'Nombre del usuario',
                  labelText: 'Nombre',
                  suffixIcon: Icons.supervised_user_circle_rounded,
                  formProperty: 'firstName',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  hintText: 'Apellido',
                  labelText: 'Apellido del usuario',
                  suffixIcon: Icons.abc_rounded,
                  formProperty: 'lastName',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  hintText: 'Correo del usuario',
                  labelText: 'correo electrónico',
                  textInputType: TextInputType.emailAddress,
                  suffixIcon: Icons.abc_rounded,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  password: true,
                  hintText: 'Contraseña',
                  labelText: 'Contraseña',
                  textInputType: TextInputType.emailAddress,
                  suffixIcon: Icons.abc_rounded,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                DropdownButtonFormField(
                    items: const [
                      DropdownMenuItem(
                        value: 'pasajero',
                        child: Text('Pasajero'),
                      ),
                      DropdownMenuItem(
                        value: 'superUser',
                        child: Text('Super User'),
                      ),
                      DropdownMenuItem(
                        value: 'developer',
                        child: Text('Desarrollador'),
                      )
                    ],
                    onChanged: (value) {
                      print('Valor del selector $value');
                      formValues['role'] = value ?? 'Admin';
                    }),
                ElevatedButton(
                    onPressed: () {
                      //quitar el foco del teclado

                      FocusScope.of(context).requestFocus(FocusNode());

                      print(
                          'Es válido el formulario ${myFromKey.currentState?.validate()}');

                      print('Valor del formulario $formValues');
                    },
                    child: const SizedBox(
                        width: double.infinity,
                        child: Center(child: Text('Guardar'))))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
