import 'package:flutter/material.dart';

myApp() {
  var myText = Text(
    "Red Hat Asia Pacific",
    textDirection: TextDirection.ltr,
    textAlign: TextAlign.center,
  );

  var imageUrl =
      "https://blog.tedroche.com/wp-content/uploads/2019/07/red-hat-social-share.jpg";

  var myImage = Image.network(
    imageUrl,
    width: double.infinity,
    height: double.infinity,
  );

  var logoUrl =
      "https://pbs.twimg.com/profile_images/1123557710191001600/oMQc_xqN.png";

  var myLogo = Image.network(
    logoUrl,
    width: double.infinity,
    height: double.infinity,
  );

  var myEmailIcon = Icon(Icons.email);
  var myCalIcon = Icon(Icons.calendar_today);

  emailPressed() {
    print("you clicked Email!!😖");
  }

  calPressed() {
    print("you clicked Cal!!😖");
  }

  var myEmailIconButton =
      IconButton(icon: myEmailIcon, onPressed: emailPressed);
  var mycalIconButton = IconButton(icon: myCalIcon, onPressed: calPressed);

  var appBar = AppBar(
    title: myText,
    backgroundColor: Colors.red,
    leading: myLogo,
    actions: <Widget>[myEmailIconButton, mycalIconButton],
  );

  var myHome = Scaffold(
    appBar: appBar,
    body: myImage,
    // backgroundColor: Colors.lightBlueAccent[100],
  );

  var design = MaterialApp(
    home: myHome,
    debugShowCheckedModeBanner: false,
  );

  return design;
}
