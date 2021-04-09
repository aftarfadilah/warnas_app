import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WARNAS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        backgroundColor: Colors.white,
        fontFamily: 'Montserrat',
      ),
      home: MyHomePage(title: 'WARNAS'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text(
          widget.title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w900,
            color: Colors.black87,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Divider(
              color: Colors.black12,
              height: 30,
              thickness: 1,
              indent: 15,
              endIndent: 15,
            ),
            Text(
              'Pilih Meja',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.symmetric(vertical: 15),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Container( //active
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: Card(
                      color: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: InkWell(
                        splashColor: Colors.green,
                        onTap: () {
                          print('Meja 1 Tapped');
                        },
                        customBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text(
                              '1',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container( //active
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: Card(
                      color: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: InkWell(
                        splashColor: Colors.green,
                        onTap: () {
                          print('Card 2 Tapped');
                        },
                        customBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text(
                              '2',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: InkWell(
                        splashColor: Colors.green,
                        onTap: () {
                          print('Card 3 Tapped');
                        },
                        customBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text(
                              '3',
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: InkWell(
                        splashColor: Colors.green,
                        onTap: () {
                          print('Card 4 Tapped');
                        },
                        customBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text(
                              '4',
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: InkWell(
                        splashColor: Colors.green,
                        onTap: () {
                          print('Card 5 Tapped');
                        },
                        customBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Center(
                            child: Text(
                              '5',
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.black12,
              height: 30,
              thickness: 1,
              indent: 15,
              endIndent: 15,
            ),
            Text(
              'Transaksi yang berlangsung',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: InkWell(
                splashColor: Colors.green,
                onTap: (){
                  print("Transaksi 1 tapped");
                },
                customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 75,
                      height: 75,
                      child: Center(
                        child: Text(
                          '1',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 24,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 5),
                          child: Text(
                            'Meja untuk 4 orang',
                            style: TextStyle(
                                color: Colors.black54
                            ),
                          ),
                        ),
                        Text(
                          '8 Menu belum dibayar',
                          style: TextStyle(
                              color: Colors.black45
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
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
                    SizedBox(
                      width: 75,
                      height: 75,
                      child: Center(
                        child: Text(
                          '2',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 24,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                        Text(
                          '5 Menu belum dibayar',
                          style: TextStyle(
                              color: Colors.black45
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.black12,
              height: 30,
              thickness: 1,
              indent: 15,
              endIndent: 15,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
