import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Inputs')),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: Column(children: [
            TextFormField(
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
              decoration: const InputDecoration(
                  hintText: 'Nombre del ususario',
                  label: Text('nombre'),
                  helperText: 'solo letras',
                  border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(10)))),
            )
          ]),
        ));
  }
}
