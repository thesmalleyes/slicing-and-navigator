import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String id;
  const HomePage({super.key, required this.id});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> bioskopList = [
    'Ambarukmo XXI',
    'Cinema XXI',
    'Bandung CGV',
    'Yogya 21',
    'Sleman Premiere'
  ];
  List<String> bioskopFilteredList = [];
  final searchController = TextEditingController();

  @override
  void initState() {
    bioskopFilteredList.addAll(bioskopList);
    super.initState();
  }

  @override
  void dispose() {
    print('Dispose is running');
    super.dispose();
  }

  searchBioskop(String keyword) {
    final bioskopFiltered = bioskopList.where(
        (bioskop) => bioskop.toLowerCase().contains(keyword.toLowerCase()));
    setState(() {
      bioskopFilteredList
        ..clear()
        ..addAll(bioskopFiltered.toList());
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Appbar'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Ini Home dengan id ${widget.id}'),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Press Back')),
          Container(
            padding: const EdgeInsets.all(16),
            width: size.width,
            child: TextFormField(
              controller: searchController,
              decoration: const InputDecoration(
                  label: Text('Nama Bioskop'),
                  hintText: 'Masukkan Nama Bioskop'),
              onChanged: searchBioskop,
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          bioskopFilteredList.isEmpty
              ? const Text('Pencarian Tidak ditemukan')
              : Expanded(
                  child: ListView.builder(
                    itemCount: bioskopFilteredList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 16.0, bottom: 8),
                        child: Text(
                          bioskopFilteredList[index],
                          style: const TextStyle(fontSize: 16),
                        ),
                      );
                    },
                  ),
                ),
        ],
      ),
    );
  }
}
