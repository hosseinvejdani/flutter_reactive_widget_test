import 'package:flutter/material.dart';
import 'package:flutter_reactive_widget/flutter_reactive_widget.dart';
import 'package:flutter_reactive_widget_test/controller.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final cont = AppController();

    return MaterialApp(
      home: Scaffold(
        floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              onPressed: () => cont.incSpeed(5),
              child: const Text('inc'),
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ReactiveWidget(() {
                return Text(
                  "speed  : ${cont.car.speed}",
                  style: Theme.of(context).textTheme.displaySmall,
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
