import 'package:flutter/material.dart';
import 'package:listview/widgets/widget.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Cards"),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: [

             Cards2(
              ImageUrl:
                  'https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg',
            ),
            SizedBox(
              height: 10,
            ),
            Cards2(
              ImageUrl:
                  'http://iso.500px.com/wp-content/uploads/2014/07/paint-sunset.jpg',
            ),
            SizedBox(
              height: 10,
            ),
            Cards2(
              ImageUrl:
                  'http://iso.500px.com/wp-content/uploads/2014/07/mesa-after.jpg',
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ));
  }
}
