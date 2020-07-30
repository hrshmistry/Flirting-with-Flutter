import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:fluttertoast/fluttertoast.dart';

myApp() {
  FlutterStatusbarcolor.setStatusBarColor(Colors.transparent);
  var myBody = Container(
    width: 300,
    height: 300,
    alignment: Alignment.bottomCenter,
    child: Text(
      "Elon Musk",
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
    ),
    decoration: BoxDecoration(
        color: Colors.blue,
        image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://evbite.com/wp-content/uploads/2018/12/Elon-Musk-Smoking.jpg")),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(width: 3, color: Colors.grey)),
  );

  info() {
    Fluttertoast.showToast(
        msg: "You Clicked Info!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.blueGrey,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  var myHome = Scaffold(
      appBar: AppBar(
        title: Text("Elon Musk"),
        backgroundColor: Colors.blueGrey,
        actions: <Widget>[IconButton(icon: Icon(Icons.info), onPressed: info)],
      ),
      body: Center(child: myBody));

  return MaterialApp(
    home: myHome,
    debugShowCheckedModeBanner: false,
  );
}
