import 'package:flutter/material.dart';

class BlueClass extends StatelessWidget {
  const BlueClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      backgroundColor: Colors.blue,
      body: ListView(
        children: List.generate(
            10,
            (index) => ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, "details",
                        arguments: {'id': index});
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => Details(id: index)));
                  },
                  title: Text("Data of $index"),
                )),
      ),
    );
  }
}

class Details extends StatelessWidget {
  final int id;
  const Details({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("You are on $id")),
    );
  }
}
