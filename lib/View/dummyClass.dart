import 'package:flutter/material.dart';

class DummyClass extends StatelessWidget {
  const DummyClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dummy Class")),
      body: Row(children: [Text('heheheheheheheheheh')]),
    );
  }
}
