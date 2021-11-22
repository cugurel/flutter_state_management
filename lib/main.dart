import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() => runApp(ProviderScope(child: MyApp()));

class IncrementNotifier extends ChangeNotifier{
  int _value=0;
  int get value => _value;

  void increment(){
    _value++;
    notifyListeners();
  }
}

final greetingProvider = Provider((ref) => 'Hello Riverpod');

final incrementProvider = ChangeNotifierProvider((ref)=>IncrementNotifier());

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
                final incrementNotifier = watch(incrementProvider);
                return Text(incrementNotifier.value.toString());
              },
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              context.read(incrementProvider).increment();
            },
            child: Icon(Icons.add),
            
          ),
        ));
  }
}
