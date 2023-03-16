import 'package:flutter/material.dart';

class slideScreen extends StatefulWidget {
  const slideScreen({Key? key}) : super(key: key);

  @override
  State<slideScreen> createState() => _slideScreenState();
}

class _slideScreenState extends State<slideScreen> {
  double _slideValue = 100;
  bool _isValid = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs y Forms'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
              min: 50,
              max: 600,
              value: _slideValue,
              onChanged: _isValid
                  ? (value) {
                      _slideValue = value;
                      setState(() {});
                    }
                  : null),
          //solo representa el cuadrado a darle click
          // Checkbox(
          //     value: _isValid,
          //     onChanged: (value) {
          //       _isValid = value ?? true;
          //       setState(() {});
          //     }),
          // CheckboxListTile(
          //     title: Text('Habilitar slider'),
          //     value: _isValid,
          //     onChanged: ((value) => setState(() {
          //           _isValid = value ?? true;
          //         }))),
          SwitchListTile.adaptive(
              title: Text('Habilitar slider'),
              value: _isValid,
              onChanged: ((value) => setState(() {
                    _isValid = value ;
                  }))),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: NetworkImage(
                    'https://w7.pngwing.com/pngs/420/615/png-transparent-marvel-spider-man-illustration-ultimate-spider-man-hulk-standee-poster-spider-comics-heroes-superhero.png'),
                fit: BoxFit.contain,
                width: _slideValue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
