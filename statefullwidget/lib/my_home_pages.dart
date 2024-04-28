import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _count = 0;

  @override
  void initState() {
    super.initState();
    // You could potentially fetch data from an API here (if needed)
    print('initState called: Initial count is $_count');
  }

  void _incrementCounter() {
    setState(() {
      _count++;
    });
  }

  @override
  void dispose() {
    // You could potentially remove any listeners here (if applicable)
    print('dispose called: Final count is $_count');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pressed the button $_count times.',
            ),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
