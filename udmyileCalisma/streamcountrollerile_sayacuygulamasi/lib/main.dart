import 'dart:async';

import 'package:flutter/material.dart';
import 'package:streamcountrollerile_sayacuygulamasi/sayac_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
        appBarTheme: const AppBarTheme(
          backgroundColor:
              Colors.deepPurple, // Set the desired color for the app bar
        ),
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  final SayacViewModel sayacViewModel = SayacViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: StreamBuilder(
        initialData: sayacViewModel.init(),
        stream: sayacViewModel.sayacStream,
        builder: (context, snapshot) => Text(title + "${snapshot.data}"),
      )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            StreamBuilder(
              initialData: sayacViewModel.init(),
              stream: sayacViewModel.sayacStream,
              builder: (context, snapshot) => Text(
                snapshot.hasData ? snapshot.data.toString() : 'Değer Yok',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              sayacViewModel.artir();
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            onPressed: () {
              sayacViewModel.azalt();
            },
            tooltip: 'Increment',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
