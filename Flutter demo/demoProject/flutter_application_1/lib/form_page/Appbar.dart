import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

AppBar _getAppBar() {
  return AppBar(
    iconTheme: IconThemeData(color: Colors.black),
    backgroundColor: primaryColor,
    // Here we take the value from the MyHomePage object that was created by
    // the App.build method, and use it to set our appbar title.
    title: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Text(
          "Form",
          style: TextStyle(color: Colors.black, fontSize: 16.0),
        ),
        Text(
          "Aekam Development",
          style: TextStyle(color: Colors.black, fontSize: 14.0),
        )
      ],
    ),
    leading: Padding(
      padding: const EdgeInsets.all(5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        child: Image.network(
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4pA1tPBTkJvIW-5IebxJPCBShfcC4TWZNMG9jiUmH&s",
          width: 40,
          height: 40,
        ),
      ),
    ),
    actions: [
      IconButton(onPressed: () {}, icon: Icon(Icons.search)),
      IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
      IconButton(onPressed: () {}, icon: Icon(Icons.menu))
    ],
  );
}
