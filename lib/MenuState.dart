import 'package:flutter/material.dart';

class MenuState extends StatelessWidget {
  final String title;
  MenuState(this.title);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
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
              elevation: 2,
              iconTheme: IconThemeData(
                  color: Colors.black87
              ),
              bottom: TabBar(
                  labelColor: Colors.green,
                  unselectedLabelColor: Colors.black87,
                tabs: [
                  Tab(
                    text: 'Lauk',
                  ),
                  Tab(
                    text: 'Sayuran',
                  ),
                  Tab(
                    text: 'Minuman',
                  )
                ],
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(
                    color: Colors.green,
                    width: 2,
                  )
                )
              ),
            ),
            body: TabBarView( // TODO: Add Menu Placeholder
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Lauk untuk Meja $title")
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Sayuran untuk Meja $title")
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Minuman untuk Meja $title")
                  ],
                ),
              ],
            )
        ),
    );
  }
}