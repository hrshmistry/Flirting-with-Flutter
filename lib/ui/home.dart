import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

MyApp() {
  var url =
      "https://media.wired.com/photos/5926856bcfe0d93c47430804/master/w_2400,c_limit/TeslaTA-501837086.jpg";

  var elon =
      "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.90V2OtmXcjkWpBTU4wNDQgAAAA%26pid%3DApi&f=1";

  onImage() {
    Fluttertoast.showToast(
        msg: "This Is Elon Musk",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.blueGrey[100],
        textColor: Colors.black,
        fontSize: 16.0);
  }

  onMenu() {
    Fluttertoast.showToast(
        msg: "Menu will be listed here",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.blueGrey[100],
        textColor: Colors.black,
        fontSize: 16.0);
  }

  var myBody = Container(
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.all(20),
      alignment: Alignment.center,
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.blueGrey, width: 2)),
              width: 300,
              height: 130,
              margin: EdgeInsets.all(50),
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Elon Musk",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.email,
                      ),
                      Text(
                        " elonmusk@tesla.com",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  )
                ],
              )),
          GestureDetector(
            onTap: onImage,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(elon)),
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.blueGrey, width: 2)),
              width: 100,
              height: 100,
              alignment: Alignment.center,
            ),
          ),
        ],
      ));

  var myHome = Scaffold(
    appBar: AppBar(
      title: Text("Elon Musk"),
      backgroundColor: Colors.black,
      leading: Image.network(url),
      actions: <Widget>[
        IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: onMenu)
      ],
    ),
    body: Center(child: myBody),
  );

  return MaterialApp(
    home: myHome,
    debugShowCheckedModeBanner: false,
  );
}
