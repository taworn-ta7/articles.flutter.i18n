import 'package:flutter/material.dart';
import './i18n/strings.g.dart';

class DialogBox {
  static Future<void> show(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(t.dialogBox.title),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(t.dialogBox.text),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(t.dialogBox.ok),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
