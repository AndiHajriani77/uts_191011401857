import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Grid dan Hero",
    home: new Home(),
  ));
}

class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  _HomeState createdState() => new _HomeState();
}

class _HomeState extends State<Home> {
  List<Container> daftarSuperhero = new ListView();

  var karakter = [
    {"nama": "FastForious1", "gambar": "1.jpg"},
    {"nama": "FastForious2", "gambar": "2.jpg"},
    {"nama": "FastForious3", "gambar": "3.jpg"},
    {"nama": "FastForious4", "gambar": "4.jpg"},
    {"nama": "FastForious5", "gambar": "5.jpg"},
    {"nama": "FastForious6", "gambar": "6.jpg"},
    {"nama": "FastForious7", "gambar": "7.jpg"},
    {"nama": "FastForious8", "gambar": "8.jpg"},
    {"nama": "FastForious9", "gambar": "9.jpg"},
    {"nama": "FastForious10", "gambar": "10.jpg"},
  ];

  _buatlist() async {
    for (var i = 0; i < karakter.length; i++) {
      final karakternya = karakter[i];
      daftarSuperhero.add(
        new Container(
          child: new Text(karakternya["nama"]),
        ),
      );
    }
  }

  @override
  void initState() {
    _buatlist();
    super.initState();
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Super Hero",
          style: new TextStyle(color: Colors.white),
        ),
      ),
      body: new GridView.count(
        crossAxisCount: 2,
        children: daftarSuperhero,
      ),
    );
  }
}
