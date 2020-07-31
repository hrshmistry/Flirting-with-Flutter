import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

myDate() async {
  var url = "http://192.168.0.105/cgi-bin/date.py";
  var res = await http.get(url);
  var date = res.body;
  print(date);
  // return date;
}

myCal() async {
  var url = "http://192.168.0.105/cgi-bin/cal.py";
  var res = await http.get(url);
  var cal = res.body;
  print(cal);
  // return cal;
}

// final controller = TextEditingController();
// String cDate = "";

myBody() {
  return Container(
    width: double.infinity,
    height: double.infinity,
    child: Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 110,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.cyan[100],
            border: Border.all(color: Colors.black, width: 2),
            borderRadius: BorderRadius.circular(5),
          ),
          // alignment: Alignment.bottomCenter,
          padding: EdgeInsets.only(top: 20),
          child: Column(
            children: <Widget>[
              Container(
                child: Text("Click Date button to get current date",
                    style: TextStyle(
                      fontSize: 15,
                    )),
                padding: EdgeInsets.only(left: 0),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(left: 30, right: 30),
                child: FlatButton(
                  hoverColor: Colors.cyan,
                  highlightColor: Colors.cyan,
                  color: Colors.cyan[300],
                  onPressed: myDate,
                  child: Text(
                    "Date",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 110,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.cyan[100],
            border: Border.all(color: Colors.black, width: 2),
            borderRadius: BorderRadius.circular(5),
          ),
          // alignment: Alignment.bottomCenter,
          padding: EdgeInsets.only(top: 20),
          child: Column(
            children: <Widget>[
              Container(
                child: Text("Click Cal button to get Calendar",
                    style: TextStyle(
                      fontSize: 15,
                    )),
                padding: EdgeInsets.only(left: 0),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(left: 30, right: 30),
                child: FlatButton(
                  hoverColor: Colors.cyan,
                  highlightColor: Colors.cyan,
                  color: Colors.cyan[300],
                  onPressed: myCal,
                  child: Text(
                    "Cal",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
