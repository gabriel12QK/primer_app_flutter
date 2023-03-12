import 'package:flutter/material.dart';

class slideScreen extends StatefulWidget {
  const slideScreen({Key? key}) : super(key: key);

  @override
  State<slideScreen> createState() => _slideScreenState();
}

class _slideScreenState extends State<slideScreen> {
  double _slideValue = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider.adaptive(
                min: 50,
                max: 600,
                value: _slideValue,
                onChanged: (value) {
                  _slideValue = value;
                  setState(() {});
                }),
            Image(
              image: NetworkImage(
                  'https://w7.pngwing.com/pngs/420/615/png-transparent-marvel-spider-man-illustration-ultimate-spider-man-hulk-standee-poster-spider-comics-heroes-superhero.png'),
              fit: BoxFit.contain,
              width: _slideValue,
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
