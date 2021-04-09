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
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Pilih Meja',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                      child: InkWell(
                        splashColor: Colors.green,
                        onTap: () {
                          print('Card 1 Tapped');
                        },
                        child: SizedBox(
                          width: 75,
                          height: 75,
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                            child: Center(
                              child: Text(
                                '1',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ),
            ],
          ),
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
