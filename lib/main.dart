import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:warnas_app/MenuState.dart';

//States
import 'MenuState.dart';

//Models
import 'Meja.dart';

void main() {
  runApp(MyApp(mejas: fetchMejas()));
}

List<Meja> parseProducts(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Meja>((json) => Meja.fromJson(json)).toList();
}

Future<List<Meja>> fetchMejas() async {
  final response = await http.get('http://192.168.1.2:8000/dummy-menu.json');
  if (response.statusCode == 200) {
    return parseProducts(response.body);
  } else {
    throw Exception('Unable to fetch Meja from the REST API');
  }
}

class MyApp extends StatelessWidget {
  final Future<List<Meja>> mejas;
  MyApp({Key key, this.mejas}) : super(key: key);

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
      home: MyHomePage(title: 'WARNAS', mejas: mejas),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final Future<List<Meja>> mejas;
  MyHomePage({Key key, this.title, this.mejas}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

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
            Container(
              height: 100,
              child: FutureBuilder<List<Meja>>(
                future: widget.mejas,
                builder: (context, snapshot) {
                  if(snapshot.hasError) print(snapshot.error);
                  return snapshot.hasData ? MejaCardList(items: snapshot.data) :
                  Center(child: CircularProgressIndicator());
                },
              ),
            ),
            Divider(
              color: Colors.black12,
              height: 30,
              thickness: 1,
              indent: 15,
              endIndent: 15,
            ),
            // TODO: Sambung API Transaksi yang berlangsung
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
        onPressed: (){},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class MejaCardList extends StatelessWidget {
  final List<Meja> items;
  MejaCardList({Key key, this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return MejaCard(item: items[index]);
      },
    );
  }
}

class MejaCard extends StatelessWidget {
  MejaCard({Key key, this.item}) : super(key: key);
  final Meja item;

  Widget build(BuildContext context) {
    return Container( //active
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Card(
        color: this.item.status ? Colors.green : Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: InkWell(
          splashColor: Colors.green,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MenuState(item.nomor))
            );
          },
          customBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: SizedBox(
            width: 90,
            height: 90,
            child: Center(
              child: Text(
                this.item.nomor.toString(),
                style: TextStyle(
                  color: this.item.status ? Colors.white : Colors.black87,
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}