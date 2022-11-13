import 'package:flutter/material.dart';
import 'package:listview/themes/theme.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({Key? key}) : super(key: key);
  final options = const [
    'opcion1',
    'opcion2',
    'opcion3',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView1'),
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(options[index],
                style: const TextStyle(
                    color:AppTheme.secondary, fontSize: 25)),
            trailing: const Icon(
              Icons.double_arrow_sharp,
              color: AppTheme.primary,
            ),
            onTap: () {
              final h = options[index];
              print(h);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
