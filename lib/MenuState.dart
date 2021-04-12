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
            body: TabBarView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // TODO: Add search bar
                    // TODO: Simulate listing with API
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 7.5),
                      child: InkWell(
                        splashColor: Colors.green,
                        onTap: (){
                          print("Transaksi 2 tapped");
                        },
                        customBorder: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                              child: SizedBox(
                                  width: 75,
                                  height: 75,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          'https://images.unsplash.com/photo-1580682196957-4e16ad397c2f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=480&q=80'
                                      ),
                                    ),
                                  )
                              ),
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 5),
                                  child: Text(
                                    'Meja untuk 2 orang',
                                    style: TextStyle(
                                        color: Colors.black54
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
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