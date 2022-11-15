import 'package:flutter/material.dart';

class Cards2 extends StatelessWidget {
  const Cards2({
    Key? key, required, 
    required this.ImageUrl
    }) : super(key: key);

  final String ImageUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
           FadeInImage(
            image: NetworkImage(ImageUrl),
            placeholder: AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 1200),
          ),
          Container(
              alignment: AlignmentDirectional.bottomEnd,
              padding: const EdgeInsets.only(
                  right: 10, top: 10, bottom: 10, left: 10),
              child: const Text(
                  "Occaecat aliqua occaecat incididunt ullamco dolor nulla in mollit ea deserunt consequat sit exercitation pariatur.")),
        ],
      ),
    );
  }
}
