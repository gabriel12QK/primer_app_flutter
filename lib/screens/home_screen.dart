import 'package:flutter/material.dart';
import 'package:listview/router/app_routes.dart';
import 'package:listview/themes/theme.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<AppTheme>(context);
    // bool i = true;



    final menu = AppRoutes.menuOptions;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Componentes Flutter"),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () => theme.setTheme(AppTheme.theme_light),
               
                icon: const Icon(
                  Icons.sunny,
                  color: Colors.white,
                ),
              ),
            IconButton(
            onPressed: () => theme.setTheme(AppTheme.theme_dark),
            icon: const Icon(
              Icons.nightlight_round_outlined,
              color: Colors.white,
            ),
          )
            ],
          )
          
        ],
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
              leading: Icon(
                menu[index].icon,
              ),
              title: Text(
                menu[index].name,
              ),
              onTap: () {
                // final route = MaterialPageRoute(
                //     builder: (context) => const ListView1Screen());
                // Navigator.push(context, route);
                Navigator.pushNamed(context, menu[index].route);
              }),
          separatorBuilder: (_, __) => Divider(),
          itemCount: AppRoutes.getAppRoutes().length),
    );
  }
}
