import 'package:flutter/material.dart';
import 'package:flutter_application_components/widgets/widgets.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Emmanuel',
      'last_name': 'Bazan',
      'email': 'emmanuel@gmail.com',
      'password': '123456',
      'role': 'admin'
    };

    return Scaffold(
        appBar: AppBar(title: const Text('Inputs')),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(children: [
              CustomInputField(
                label: 'Nombre',
                hintText: 'Nombre del usuario',
                formValues: formValues,
                keyValue: 'first_name',
              ),
              const SizedBox(
                height: 30,
              ),
              CustomInputField(
                label: 'Apellido',
                hintText: 'Apellido del usuario',
                formValues: formValues,
                keyValue: 'last_name',
              ),
              const SizedBox(
                height: 30,
              ),
              CustomInputField(
                label: 'Correo',
                hintText: 'Correo del usuario',
                keyboardType: TextInputType.emailAddress,
                formValues: formValues,
                keyValue: 'email',
              ),
              const SizedBox(
                height: 30,
              ),
              CustomInputField(
                label: 'Contraseña',
                hintText: 'Contraseña del usuario',
                keyboardType: TextInputType.emailAddress,
                formValues: formValues,
                keyValue: 'password',
                isPassword: true,
              ),
              const SizedBox(
                height: 30,
              ),
              DropdownButtonFormField(
                  value: 'admin',
                  items: const [
                    DropdownMenuItem(value: 'admin', child: Text('admin')),
                    DropdownMenuItem(
                        value: 'superuser', child: Text('super user')),
                    DropdownMenuItem(
                        value: 'jrdeveloper', child: Text('jr developer')),
                    DropdownMenuItem(
                        value: 'srdeveloper', child: Text('srdeveloper')),
                  ],
                  onChanged: (value) {
                    formValues['role'] = value!;
                  }),
              ElevatedButton(
                  onPressed: () {
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
            ]),
          ),
        ));
  }
}
