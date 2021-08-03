import 'package:flutter/material.dart';
import 'package:flutter/languages.dart';

import './recipes_screen.dart';
import './route_generator.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            title: 'Languages.multiLanguagesText[Languages.chosenLanguage]['Title'],
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,

      ),
      home: MyHomePage(title: 'What will you cook tonight ?'),
      // TODO: change today/tonight depending on the time of day
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(
                  '/settings_screen',
                  arguments: 'Hello there from the first page!',
                );
              },
            )
          ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              'Empty',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
              child: Text(
                'Menu',
                style: TextStyle(fontSize: 25)
              ),
            ),
            ElevatedButton(
              child: Text('Recipes'),
              onPressed: () {
                Route route = MaterialPageRoute(
                  builder: (context) => RecipesScreen(),
                );
                Navigator.push(context, route);
              },
            ),
          ],
        ),
      ),
    );
  }
}
