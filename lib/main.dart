import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() => runApp(ProviderScope(child: MyApp()));

class IncrementNotifier extends ChangeNotifier{
  int _value=0;
  int get value => _value;

  void increment(){
    _value += 1;
    notifyListeners();
  }
}

final greetingProvider = Provider((ref) => 'Hello Riverpod');

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Riverpd Tutorial',
        home: Scaffold(
          appBar: AppBar(
            title: Text("Riverpod"),
          ),
          body: Center(
            child: Consumer(
              builder: (context, watch, child) {
                final greeting = watch(greetingProvider);
                return Text(greeting);
              },
            ),
          ),
        ));
  }
}
