import 'package:flutter/material.dart';
import 'package:listview/widgets/widget.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'Nombre': 'gabriel',
      'correo': 'gabriel@gmail.com',
      'contraseña': '12345678'
    };

    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Form(
            // cada widget tiene su prpioa key la cual s epuede usar para distintas opciones en este caso lakey no servira para saber el esatdo del formulario

            key: formKey,
            child: Column(
              children: [
                CustomInputField(
                  hintText: 'Nombre de usuario',
                  labelText: 'Nombre',
                  suffixIcon: Icons.group,
                  formProperty: 'Nombre',
                  formValues: formValues,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  hintText: 'admin@gamil.com',
                  labelText: 'Correo',
                  suffixIcon: Icons.email,
                  textInputType: TextInputType.emailAddress,
                  formProperty: 'correo',
                  formValues: formValues,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomInputField(
                  hintText: '123456789',
                  labelText: 'Contraseña',
                  suffixIcon: Icons.password,
                  isPassword: true,
                  formProperty: 'contraseña',
                  formValues: formValues,
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      FocusScope.of(context).requestFocus(
                          FocusNode()); //esta linea permite que cada ves que toquemos el boton el teclado se desactive
                      //el signo de adminracion al inicio es para negar el validate y el del final es para especificar que siempre tendremos un estado en el formualario
                      if (!formKey.currentState!.validate()) {
                        print('formulario invalido');
                        return;
                      }
                      print(formValues);
                    },
                    child: SizedBox(
                      width: double.infinity,
                      child: Center(child: Text('Guardar')),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
