import 'package:flutter/material.dart';
import 'package:products_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Productos')),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: ((context, index) => ProductCard())
        
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          
        },
        child: Icon(Icons.add),),
    );
  }
}
