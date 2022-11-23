import 'package:flutter/material.dart';
import 'package:counter_7/page/show.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/page/mywatchlist.dart';
import 'package:counter_7/model/watchlist_data.dart';
import 'package:counter_7/main.dart';

class MyDetail extends StatefulWidget {
  const MyDetail({super.key, required this.watchlistModel});
  final WatchList watchlistModel;

  @override
  State<MyDetail> createState() => _MyDetailState(watchlistModel);
}

class _MyDetailState extends State<MyDetail> {
    WatchList model;
    _MyDetailState(this.model);
    @override
    Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Detail Film'),
        ),
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
        body: Column(
            children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                        child: Text(
                            model.fields.title,
                            style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            ),
                        ),
                    ),  
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(10,20,10,10),
                    child: Row(
                        children: [
                            Text(
                            "Release Date: ",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Text(
                            model.fields.releaseDate,
                            style: const TextStyle(fontSize: 14),
                            ),
                        ],
                    ),
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(10,10,10,10),
                    child: Row(
                    children: [
                        const Text(
                            "Rating: ",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Text(
                            '${model.fields.rating}',
                            style: const TextStyle(fontSize: 14),
                        ),
                    ],
                    ),
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(10,10,10,10),
                    child: Row(
                    children: [
                        Text(
                        "Status: ",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Text(
                        model.fields.watched.toString().split(".").last.toLowerCase().split("_").first,
                        style: const TextStyle(fontSize: 14),
                        ),
                    ],
                    ),
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(10,10,10,10),
                    child: Row(
                    children: [
                        Text(
                        "Review: ",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Flexible(
                        child: Text(
                            model.fields.review,
                            style: const TextStyle(fontSize: 14),
                        ),
                        ),
                    ],
                    ),
                ),
            ],
        ),
    );
  }
}