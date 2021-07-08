import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int years = 19;
    final String name = "Mahipalsinh";
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("I am $name and i am $years old."),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
