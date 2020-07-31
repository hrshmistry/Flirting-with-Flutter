import 'package:flutter/material.dart';
import 'ui/home.dart';

main() {
  runApp(MyWeb());
}

class MyWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text("Python Web Server App"),
        ),
        body: myBody(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
