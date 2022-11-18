import 'package:flutter/material.dart';
import 'package:task_ekkelai/counter_component.dart';
import 'package:task_ekkelai/divider_component.dart';
import 'package:task_ekkelai/global.dart';
import 'package:task_ekkelai/multiplier_component.dart';
import 'package:task_ekkelai/subtraction_component.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task EkkelAi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task EkkelAi'),
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          child: ValueListenableBuilder(
            valueListenable: counter,
            builder: (_, __, ___) {
              return ListView(
                children: [
                  MultiplierComponent(),
                  SizedBox(height: 16),
                  SubtractionComponent(),
                  SizedBox(height: 16),
                  DividerComponent(),
                  SizedBox(height: 30),
                  CounterComponent(),
                ],
              );
            },
          )),
    );
  }
}
