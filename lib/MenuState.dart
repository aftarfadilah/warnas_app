import 'package:flutter/material.dart';

class MenuState extends StatelessWidget {
  final String title;

  MenuState(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Meja $title",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w900,
            color: Colors.black87,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // TODO: Add Menu Placeholder
          Text("Menu untuk Meja $title");
        ],
      ),
    );
  }
}