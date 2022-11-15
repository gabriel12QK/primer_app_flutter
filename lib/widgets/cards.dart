import 'package:flutter/material.dart';

class CardS extends StatelessWidget {
  const CardS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.image_rounded),
            title: Text("Hola desde la tarjeta"),
            subtitle: Text("Do aliqua ut duis velit ea esse aliqua."),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () {},
                child: Text('Cancel'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Accept'),
              )
            ],
          )
        ],
      ),
    );
  }
}
