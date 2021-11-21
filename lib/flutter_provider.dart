import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FlutterProvider extends StatelessWidget {
  const FlutterProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(child: Page());
  }
}

final numberProvider = Provider<int>((ref){
  return 42;
});

class Page extends ConsumerWidget {
  const Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final number = watch(numberProvider);
    return Scaffold(
      body: Center(
        child: Text(number.toString()),
      ),
    );
  }
}
