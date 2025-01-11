// ignore_for_file: prefer_const_constructors

import 'package:floating_navbar/floating_navbar_item.dart';
import 'package:flutter/material.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter_application_1/creat_post_screen/CreatPost.dart';
// import 'package:flutter_application_1/form_card.dart';
import './form_page/Appbar.dart' as appbar;
import 'package:flutter_application_1/form_page/form_card.dart';
import 'package:flutter_application_1/form_page/serch_bar.dart';

void main() {
  runApp(const MyApp());
}

const primaryColor = Colors.white;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: primaryColor,
        inputDecorationTheme: const InputDecorationTheme(
          filled: true, //<-- SEE HERE
          fillColor: Color.fromARGB(255, 255, 255, 255), //<-- SEE HERE
        ),
        // primarySwatch: Color.fromARGB(0, 244, 240, 240),
      ),
      home: const MyHomePage(title: 'Form'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // get actions => null;

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(),
      body: _getBody(),
      floatingActionButton: _getFloatingActions(context),
      bottomNavigationBar: _getBottomSheet(),
    );
  }

  Column _getBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SerchBar(),
        FormCard(),
      ],
    );
  }

  FloatingNavbar _getBottomSheet() {
    return FloatingNavbar(
      borderRadius: 50,
      // currentIndex: 0,
      items: [
        FloatingNavbarItem(
          icon: Icons.forum,
          title: 'Forum',
        ),
        FloatingNavbarItem(icon: Icons.house, title: 'Market'),
        FloatingNavbarItem(
          icon: Icons.center_focus_strong_outlined,
        ),
        FloatingNavbarItem(icon: Icons.message, title: 'Message'),
        FloatingNavbarItem(icon: Icons.network_cell, title: 'Network'),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Color.fromARGB(255, 14, 8, 0),
      onTap: _onItemTapped,
    );
  }

  Padding _getFloatingActions(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 100,
              height: 40,
              child: FloatingActionButton.extended(
                  onPressed: () {},
                  backgroundColor: Colors.black,
                  label: Text(
                    "Show All",
                    style: TextStyle(fontSize: 10),
                  ),
                  icon: const Icon(
                    Icons.sort,
                    color: Colors.white,
                    size: 10,
                  )),
            ),
            SizedBox(
              width: 70,
              height: 40,
              child: FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CreatePost_Page()));
                  },
                  backgroundColor: Colors.black,
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  )),
            ),
          ],
        ),
      ),
    );
  }

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
}
