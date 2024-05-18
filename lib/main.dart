import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final GlobalKey<StateTeksUtama> teksUtamaKey = GlobalKey<StateTeksUtama>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Halo Dunia',
      theme: ThemeData(
          appBarTheme: AppBarTheme(
        color: Colors.blue,
      )),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Halo Dunia"),
        ),
        body: Center(
          child: TeksUtama(
            key: teksUtamaKey,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Random',
          child: Icon(Icons.refresh),
          onPressed: () {
            teksUtamaKey.currentState?.incrementIndex();
          },
        ),
      ),
    );
  }
}

class TeksUtama extends StatefulWidget {
  TeksUtama({Key? key}) : super(key: key);

  @override
  StateTeksUtama createState() => StateTeksUtama();
}

class StateTeksUtama extends State<TeksUtama> {
  int index = 0;

  final listNama = [
    'AKHLIS NUR AZIZAH',
    'AJENG DWI FEBRIANA',
    'YUDHA',
    'EMI FITRIANI',
    'TIYAN DESI WULANDARI',
  ];

  final listWarna = [
    Colors.red,
    Colors.purple,
    Colors.teal,
    Colors.lime,
    Colors.indigo,
    Colors.deepPurple,
    Colors.cyan,
    Colors.blue,
    Colors.yellow
  ];

  void incrementIndex() {
    setState(() {
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Apa Kabar',
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 20),
        ),
        Text(
          listNama[index % listNama.length],
          textDirection: TextDirection.ltr,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: listWarna[index % listWarna.length]),
        ),
      ],
    );
  }
}
