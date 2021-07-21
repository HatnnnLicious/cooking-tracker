import 'package:flutter/material.dart';

class RecipesScreen extends StatefulWidget {

  @override
  _RecipesScreenState createState() => _RecipesScreenState();
}

class _RecipesScreenState extends State<RecipesScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('You have stored $_counter Recipes'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Recipes for tonight\n',
              // TODO : Populate with interactive cards
            ),
            ElevatedButton(
                onPressed: _incrementCounter,
                child: Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}
