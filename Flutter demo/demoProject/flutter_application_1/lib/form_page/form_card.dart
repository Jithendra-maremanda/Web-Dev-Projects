import 'dart:ui';

import 'package:flutter/material.dart';
// import 'package:flutter_application_1/serch_bar.dart';
import './form_card.dart';

// const List<Widget> vegetables = <Widget>[
//   Icon(Icons.thumb_up),
//   // Icon(Icons.comment),
//   // Icon(Icons.translate),
//   // Icon(Icons.message),
//   // Icon(Icons.bookmark),
// ];

class FormCard extends StatefulWidget {
  const FormCard({super.key});

  @override
  State<FormCard> createState() => _FormCardState();
}

class _FormCardState extends State<FormCard> {
  final List<bool> _selectedVegetables = <bool>[false, true, false];
  @override
  Color _iconColor = Colors.black;
  Widget build(BuildContext context) {
    // return ListView.builder(
    //   itemCount: 1,
    //   itemBuilder: (context, index) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "POSTS",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                            Text(
                              "COMMUNITY",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const Divider(
                    height: 10,
                    thickness: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // ignore: avoid_unnecessary_containers
                        Container(
                          child: Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                                child: Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4pA1tPBTkJvIW-5IebxJPCBShfcC4TWZNMG9jiUmH&s",
                                  width: 60,
                                  height: 60,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Row(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        const Text("jithendra",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold)),
                                        const Icon(
                                          Icons.verified,
                                          size: 15,
                                          color: Colors.blue,
                                        ),
                                      ],
                                    ),
                                    const Text("Engineer"),
                                    const Text("Karimnagar"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        // ignore: avoid_unnecessary_containers
                        Container(
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  Column(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      const Text("24m"),
                                      const Icon(Icons.more_vert_sharp)
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          // ignore: avoid_unnecessary_containers
                          Container(
                            child: const Text("46tg"),
                          ),
                          // ignore: avoid_unnecessary_containers
                          Container(
                            child: const Text("vghh"),
                          ),
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "1 Likes",
                          style: TextStyle(color: Colors.blue),
                        ),
                        Text(
                          "0 Comments",
                          style: TextStyle(color: Colors.blue),
                        )
                      ],
                    ),
                  ),
                  const Divider(
                    height: 10,
                    thickness: 2,
                  ),
                  Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: const [
                            Icon(Icons.thumb_up_alt_outlined),
                            Text("Like"),
                          ],
                        ),
                        Column(
                          children: const [
                            Icon(Icons.comment_bank_outlined),
                            Text("Comment"),
                          ],
                        ),
                        Column(
                          children: const [
                            Icon(Icons.translate_outlined),
                            Text("Translate"),
                          ],
                        ),
                        Column(
                          children: const [
                            Icon(Icons.message_outlined),
                            Text("Message"),
                          ],
                        ),
                        Column(
                          children: const [
                            Icon(Icons.bookmark_outlined),
                            Text("Bookmark"),
                          ],
                        ),
                      ],
                    ),
                  ]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
    //     },
    //   );
  }
}
