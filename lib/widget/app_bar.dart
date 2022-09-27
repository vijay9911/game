import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBar extends StatelessWidget {
  const AppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new IconButton(
        icon: new Icon(Icons.arrow_back, color: Colors.orange),
        onPressed: () => Navigator.of(context).pop(),
      ),
    );
  }
}
