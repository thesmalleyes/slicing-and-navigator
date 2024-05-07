import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String id;
  const HomePage({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Appbar'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Ini Home dengan id $id'),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Press Back'))
          ],
        ),
      ),
    );
  }
}
