import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/show.dart';

var budgetList = [];

class Budget {
    String judul = "";
    String nominal = "";
    String jenis = "";

    Budget(String judul, String nominal, String jenis){
        this.judul = judul;
        this.nominal = nominal;
        this.jenis = jenis;
    }
}

class MyFormPage extends StatefulWidget {
    const MyFormPage({super.key});

    @override
    State<MyFormPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
    final _formKey = GlobalKey<FormState>();

    String _judul = "";

    String pilihJenis = 'Pengeluaran';
    List<String> listJenis = ['Pengeluaran', 'Pemasukan'];

    String _nominal = "";

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Form Budget'),
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
                    ],
                ),
            ),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Container(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                            children: [
                                Padding(
                                    // Menggunakan padding sebesar 8 pixels
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                        decoration: InputDecoration(
                                            hintText: "Contoh: Nonton di Theater",
                                            labelText: "Judul",
                                            //icon: const Icon(Icons.),
                                            // Menambahkan circular border agar lebih rapi
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(5.0),
                                            ),
                                        ),
                                        // Menambahkan behavior saat nama diketik 
                                        onChanged: (String? value) {
                                            setState(() {
                                                _judul = value!;
                                            });
                                        },
                                        // Menambahkan behavior saat data disimpan
                                        onSaved: (String? value) {
                                            setState(() {
                                                _judul = value!;
                                            });
                                        },
                                        // Validator sebagai validasi form
                                        validator: (String? value) {
                                            if (value == null || value.isEmpty) {
                                                return 'Judul tidak boleh kosong!';
                                            }
                                            return null;
                                        },
                                    ),
                                ),

                                //Nominal
                                Padding(
                                    // Menggunakan padding sebesar 8 pixels
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                        decoration: InputDecoration(
                                            hintText: "Contoh: 93000",
                                            labelText: "Nominal",
                                            //icon: const Icon(Icons.),
                                            // Menambahkan circular border agar lebih rapi
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(5.0),
                                            ),
                                        ),
                                        // Menambahkan behavior saat nama diketik 
                                        onChanged: (String? value) {
                                            setState(() {
                                                _nominal = value!;
                                            });
                                        },
                                        // Menambahkan behavior saat data disimpan
                                        onSaved: (String? value) {
                                            setState(() {
                                                _nominal = value!;
                                            });
                                        },
                                        // Validator sebagai validasi form
                                        validator: (String? value) {
                                            if (value == null || value.isEmpty) {
                                                return 'Nominal tidak boleh kosong!';
                                            }
                                            return null;
                                        },
                                    ),
                                ),

                                //Pilih Jenis
                                ListTile(
                                    leading: const Icon(Icons.class_),
                                    title: const Text(
                                        'Pilih Jenis',
                                    ),
                                    trailing: DropdownButton(
                                        value: pilihJenis,
                                        icon: const Icon(Icons.keyboard_arrow_down),
                                        items: listJenis.map((String items) {
                                        return DropdownMenuItem(
                                            value: items,
                                            child: Text(items),
                                        );
                                        }).toList(),
                                        onChanged: (String? newValue) {
                                        setState(() {
                                            pilihJenis = newValue!;
                                        });
                                        },
                                    ),
                                ),

                                TextButton(
                                    child: const Text(
                                        "Simpan",
                                        style: TextStyle(color: Colors.white),
                                    ),
                                    style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                                    ),
                                    onPressed: () {
                                        if (_formKey.currentState!.validate()) {
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                            return Dialog(
                                                shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10),
                                                ),
                                                elevation: 15,
                                                child: Container(
                                                child: ListView(
                                                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                                                    shrinkWrap: true,
                                                    children: <Widget>[
                                                    Center(child: const Text('Informasi Data')),
                                                    SizedBox(height: 20),
                                                    Text(
                                                        'Judul: $_judul\n' 
                                                        'Nominal: $_nominal\n'
                                                        'Jenis: $pilihJenis\n',
                                                        textAlign: TextAlign.center,
                                                    ),
                                                    TextButton(
                                                        onPressed: () {
                                                            Navigator.pop(context);
                                                            Budget budget = new Budget(_judul, _nominal, pilihJenis);
                                                            budgetList.add(budget);
                                                        },
                                                        child: Text('Kembali'),
                                                    ), 
                                                    ],
                                                ),
                                                ),
                                            );
                                            },
                                        );
                                        }
                                    },
                                ),
                                
                            ],
                        ),
                    ),
                ),
            ),
        );
    }
}