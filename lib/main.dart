import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'flutter_provider.dart';

void main() {
  runApp(MyApp());
}

final numberProvider = StateProvider<int>((ref){
  return 42;
});

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State Management"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              height: 40,
              child: RaisedButton(
                child: Text("Provider"),
                  onPressed: (){
                   // Navigator.of(context).push(MaterialPageRoute(builder: (context) => FlutterStateProvider()));
              }),
            ),

            SizedBox(
              height: 5,
            ),
            SizedBox(
              width: 200,
              height: 40,
              child: RaisedButton(
                  child: Text("State Provider"),
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => FlutterProvider()));
                  }),
            ),

            SizedBox(
              height: 5,
            ),


            //smartgit yorumu
            SizedBox(
              width: 200,
              height: 40,
              child: RaisedButton(
                  child: Text("State Provider"),
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => FlutterProvider()));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
