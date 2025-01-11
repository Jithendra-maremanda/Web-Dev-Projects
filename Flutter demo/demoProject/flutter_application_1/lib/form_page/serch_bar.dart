import 'package:flutter/material.dart';

class SerchBar extends StatefulWidget {
  const SerchBar({super.key});

  @override
  State<SerchBar> createState() => _SerchBarState();
}

class _SerchBarState extends State<SerchBar> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
      child: SizedBox(
        height: 40,
        child: TextField(
          decoration: InputDecoration(
              fillColor: Color.fromARGB(255, 255, 255, 255),
              labelText: "Search",
              suffixIcon: Icon(Icons.clear_rounded),
              hintText: "Search",
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)))),
        ),
      ),
    );
  }
}
