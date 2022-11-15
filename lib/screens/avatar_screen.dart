import 'package:flutter/material.dart';
import 'package:listview/themes/theme.dart';

class AvartarScreen extends StatelessWidget {
  const AvartarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Circle Avatar'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: const CircleAvatar(
              child: Text('GR'),
              backgroundColor: AppTheme.primaryDark,
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 115,
          backgroundImage: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdKKtum5KBM_J3Cjxa6_0WHfUVrdiGM4Eozw&usqp=CAU'),
        ),
      ),
    );
  }
}
