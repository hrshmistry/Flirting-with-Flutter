import 'package:flutter/material.dart';

myProfile() {
  var myBody = Container(
    width: 300,
    height: 300,
    alignment: Alignment.bottomCenter,
    child: Column(
      children: <Widget>[
        // Image.network(
        //     "https://evbite.com/wp-content/uploads/2018/12/Elon-Musk-Smoking.jpg"),
        Text("Elon Musk"),
        Text("elonmusk@tesla.com")
      ],
    ),
    decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(width: 3, color: Colors.grey)),
  );

  var myHome = Scaffold(
      appBar: AppBar(
        title: Text("Elon Musk"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(child: myBody));

  return MaterialApp(
    home: myHome,
    debugShowCheckedModeBanner: false,
  );
}
