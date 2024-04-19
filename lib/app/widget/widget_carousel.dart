import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Horizontal ListView Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Horizontal ListView Example'),
      ),
      body: Container(
        height: 200.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(8.0),
              width: 160.0,
              color: Colors.red,
              child: Image.network(
                'https://via.placeholder.com/150',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              width: 160.0,
              color: Colors.blue,
              child: Image.network(
                'https://via.placeholder.com/150',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              width: 160.0,
              color: Colors.green,
              child: Image.network(
                'https://via.placeholder.com/150',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              width: 160.0,
              color: Colors.orange,
              child: Image.network(
                'https://via.placeholder.com/150',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              width: 160.0,
              color: Colors.purple,
              child: Image.network(
                'https://via.placeholder.com/150',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
