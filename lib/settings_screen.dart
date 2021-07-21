import 'package:flutter/material.dart';

// TODO: transform into a stful widget
class SettingsScreen extends StatelessWidget {
//  const ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Settings\nTODO : Populate Settings',
            ),
          ],
        ),
      ),
    );
  }
}
