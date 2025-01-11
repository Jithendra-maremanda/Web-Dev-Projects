// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables
import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class CreatePost_Page extends StatefulWidget {
  const CreatePost_Page({super.key});

  @override
  State<CreatePost_Page> createState() => _CreatePost_PageState();
}

class _CreatePost_PageState extends State<CreatePost_Page> {
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: true,
            iconTheme: IconThemeData(color: Colors.black),
            // leadingWidth: 0,r
            title: const Text(
              "Create Post",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.white,
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.cancel_outlined),
              ),
            ]),
        // resizeToAvoidBottomInset: false,
        // resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 100,
                  // MediaQuery.of(context).size.height * 14 / 100,
                  width: MediaQuery.of(context).size.width * 1,
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: const Text(
                              "Share",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Center(
                            child: CustomDropdownButton2(
                              buttonWidth:
                                  MediaQuery.of(context).size.width * 0.9,
                              hint: 'Select Item',
                              dropdownItems: items,
                              value: selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  selectedValue = value;
                                });
                              },
                            ),
                          ),
                        ]),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    margin: EdgeInsets.all(10),
                  ),
                ),
                Container(
                  height: 100,
                  // MediaQuery.of(context).size.height * 11 / 100,
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: const Text(
                            "Provide Title*",
                            style: TextStyle(color: Colors.grey),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        TextField(
                          maxLines: 1,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        )
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    margin: EdgeInsets.all(7),
                  ),
                ),
                Container(
                  height: 120,
                  //  MediaQuery.of(context).size.height * 15 / 100

                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: const Text(
                            "Provide description*",
                            style: TextStyle(color: Colors.grey),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        TextField(
                          maxLines: 3,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        )
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    margin: EdgeInsets.all(7),
                  ),
                ),
                Container(
                  height: 140,
                  // MediaQuery.of(context).size.height * 18 / 100,
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: const Text(
                            "Select Media",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    child: Column(
                                      children: [
                                        Stack(
                                            alignment:
                                                AlignmentDirectional.center,
                                            fit: StackFit.loose,
                                            // ignore: prefer_const_literals_to_create_immutables
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Icon(Icons.arrow_back),
                                              )
                                            ]),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  Text("Gallery")
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    child: Column(
                                      children: [
                                        Stack(
                                            alignment:
                                                AlignmentDirectional.center,
                                            fit: StackFit.loose,
                                            // ignore: prefer_const_literals_to_create_immutables
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Icon(
                                                    Icons.camera_alt_outlined),
                                              )
                                            ]),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  Text("Camera")
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    child: Column(
                                      children: [
                                        Stack(
                                            alignment:
                                                AlignmentDirectional.center,
                                            fit: StackFit.loose,
                                            // ignore: prefer_const_literals_to_create_immutables
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child:
                                                    Icon(Icons.mic_off_sharp),
                                              )
                                            ]),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  Text("Audio")
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    child: Column(
                                      children: [
                                        Stack(
                                            alignment:
                                                AlignmentDirectional.center,
                                            fit: StackFit.loose,
                                            // ignore: prefer_const_literals_to_create_immutables
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Icon(Icons
                                                    .document_scanner_outlined),
                                              )
                                            ]),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  Text("Document")
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    child: Column(
                                      children: [
                                        Stack(
                                            alignment:
                                                AlignmentDirectional.center,
                                            fit: StackFit.loose,
                                            // ignore: prefer_const_literals_to_create_immutables
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Icon(Icons.link),
                                              )
                                            ]),
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  Text("Link")
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    margin: EdgeInsets.all(7),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          height: 40,
          child: Container(
            // color: Colors.black,

            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Text(
                  "CREATE",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.black,
            ),
          ),
        ));
  }
}
