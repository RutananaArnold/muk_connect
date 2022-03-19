import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Colleges extends StatefulWidget {
  @override
  _CollegesState createState() => _CollegesState();
}

class _CollegesState extends State<Colleges> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          "Colleges",
          style: GoogleFonts.pacifico(fontSize: 20),
        ),
        actions: [
          IconButton(
            tooltip: "Add Blog",
            onPressed: () {},
            icon: Icon(Icons.add_box_rounded, size: 40),
          ),
          IconButton(
            tooltip: "Search",
            onPressed: () {},
            icon: Icon(Icons.search, size: 40),
          ),
        ],
      ),
    );
  }
}
