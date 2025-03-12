import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Bank Card App"),
        actions: [
          TextButton(
            child: Text("Add"),
            onPressed: () {},
          ),
          TextButton(
            child: Text("Remove"),
            onPressed: () {},
          ),
          TextButton(
            child: Text("Refresh"),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            //make an appbar with three buttons
            children: [
              ElevatedButton(onPressed: () {}, child: Text("Get Bank Card")),
              ElevatedButton(
                  onPressed: () {}, child: Text("Register Bank Card")),
              ElevatedButton(onPressed: () {}, child: Text("Remove Bank Card")),
            ],
          ),
        ),
      ),
    );
  }
}
