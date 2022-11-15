import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void DisplayDialogCupertino(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('Alert Test Cupertino'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text("This is a test with Cupertino"),
                SizedBox(height: 10),
                FlutterLogo(size: 100),
              ],
            ),
            actions: [
              TextButton(
                child: const Text(
                  'Close',
                  style: TextStyle(color: Colors.redAccent),
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
              TextButton(
                child: const Text('Ok'),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          );
        });
  }

  void DisplayDialogMaterial(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Alert Test'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text("This is a test"),
                SizedBox(height: 10),
                FlutterLogo(size: 100),
              ],
            ),
            actions: <Widget>[
              TextButton(
                child: const Text('Close'),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () => DisplayDialogMaterial(context),
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Show Alert Material',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () => DisplayDialogCupertino(context),
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Show Alert Cupertino',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),

          //Con la siguientye forma hacemos que reconozaca el sistema operativo del dispositivo para lanzar el dialogo segun el mismo
          // ElevatedButton(
          //   onPressed: () => Platform.isAndroid
          //       ? DisplayDialogMaterial(context)
          //       : DisplayDialogCupertino(context),
          //   child: const Padding(
          //     padding: EdgeInsets.all(10.0),
          //     child: Text(
          //       'Show Alert',
          //       style: TextStyle(fontSize: 20),
          //     ),
          //   ),
          // ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.close),
      ),
    );
  }
}
