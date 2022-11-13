import 'package:flutter/material.dart';
import 'package:listview/router/app_routes.dart';
import 'package:listview/themes/theme.dart';
import 'package:provider/provider.dart';
//import 'package:listview/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AppTheme(AppTheme.theme_dark),
      child: MaterialAppWithTheme(),
    );
  }
}

class MaterialAppWithTheme extends StatelessWidget {
  const MaterialAppWithTheme({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

   final theme = Provider.of<AppTheme>(context);

    return MaterialApp(
      theme: theme.getTheme(),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home:  const ListView1Screen(),
      initialRoute: AppRoutes.initalRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
     // theme: AppTheme.theme,
    );
  }
}
