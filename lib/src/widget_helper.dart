import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Size getWidgetSize(GlobalKey key) {
  final RenderBox renderBox = key.currentContext?.findRenderObject();
  return renderBox?.size;
}

showSuccessToast(BuildContext context, String message) {
final titleStyle = Theme.of(context).textTheme.title.apply(color: Colors.white);
  final contentStyle = Theme.of(context).textTheme.body1.apply(color: Colors.white);
  final buttonStyle = Theme.of(context).textTheme.button.apply(color: Colors.white);
  showDialog(
    context: context,
    builder: (BuildContext context) {
      // retorna um objeto do tipo Dialog
      return AlertDialog(
        backgroundColor: Colors.green[600],
        title: new Text("Success", style: titleStyle),
        content: new Text(message, style: contentStyle),
        actions: <Widget>[
          // define os botões na base do dialogo
          new FlatButton(
            child: Text("OK", style: buttonStyle),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

showErrorToast(BuildContext context, String message) {
  final titleStyle = Theme.of(context).textTheme.title.apply(color: Colors.white);
  final contentStyle = Theme.of(context).textTheme.body1.apply(color: Colors.white);
  final buttonStyle = Theme.of(context).textTheme.button.apply(color: Colors.white);

  showDialog(
    context: context,
    builder: (BuildContext context) {
      // retorna um objeto do tipo Dialog
      return AlertDialog(
        backgroundColor: Colors.red[600],
        title: new Text("Error", style: titleStyle),
        content: new Text(message, style: contentStyle),
        actions: <Widget>[
          // define os botões na base do dialogo
          new FlatButton(
            child: Text("OK", style: buttonStyle),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
