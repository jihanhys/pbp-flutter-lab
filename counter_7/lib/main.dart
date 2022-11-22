import 'package:flutter/material.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/page/show.dart';
import 'package:counter_7/page/mywatchlist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Program Counter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProgramCounter(),
    );
  }
}

class ProgramCounter extends StatefulWidget {
  const ProgramCounter({super.key});

  final String title = 'Tugas PBP';

  @override
  State<ProgramCounter> createState() => _ProgramCounterState();
}

class _ProgramCounterState extends State<ProgramCounter> {
  int _counter = 0;
  String status = "Genap";

  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter % 2 == 0){
        status = "Genap";
      } else {
        status = "Ganjil";
      }
    });
  }
  void _decrementCounter() {
    setState(() {
      _counter--;
      if (_counter % 2 == 0){
        status = "Genap";
      } else {
        status = "Ganjil";
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

      // Menambahkan drawer menu
      drawer: Drawer(
          child: Column(
            children: [
              // Menambahkan clickable menu
              ListTile(
                title: const Text('Counter'),
                onTap: () {
                  // Route menu ke halaman utama
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const ProgramCounter()),
                  );
                },
              ),
              ListTile(
                title: const Text('Tambah Budget'),
                onTap: () {
                  // Route menu ke halaman form
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyFormPage()),
                  );
                },
              ),
              ListTile(
                title: const Text('Data Budget'),
                onTap: () {
                  // Route menu ke halaman form
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyShowPage()),
                  );
                },
              ),
              ListTile(
                  title: const Text('My Watch List'),
                  onTap: () {
                  // Route menu ke halaman data
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const MyWatchList()),
                  );
                  },
              ),
            ],
          ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              status,
              style: (status == "Ganjil") ? TextStyle(color:Color.fromARGB(255,0,0,255)): TextStyle(color:Color.fromARGB(255,255,0,0))
            ),

            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding : const EdgeInsets.fromLTRB(40,10,10,10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Align(
              alignment: Alignment.bottomLeft,
              child: (_counter == 0) ? Text(" ") : FloatingActionButton(
                onPressed: _decrementCounter,
                tooltip: 'Decrement',
                child: const Icon(Icons.remove),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                onPressed: _incrementCounter,
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
            ),
          ],
        )
        //child: Container(
        //),
      ),
    );
  }
}
