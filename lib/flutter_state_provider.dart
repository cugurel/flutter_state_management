import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



final numberStateProvider = StateProvider<int>((ref){
  return 42;
});

class FlutterStateProvider extends ConsumerWidget {
  const FlutterStateProvider({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final numberState = watch(numberStateProvider).state;
    return ProviderScope(
      child: Scaffold(
        body: Center(
          child: Text(numberState.toString()),
        ),
        floatingActionButton: FloatingActionButton(child:Icon(Icons.add),onPressed: ()=>increment(context),),
      ),
    );
  }

  void increment(BuildContext context)
  {
    context.read(numberStateProvider).state++;
  }
}
