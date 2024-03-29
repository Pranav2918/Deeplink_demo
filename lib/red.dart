import 'package:flutter/material.dart';

class RedClass extends StatelessWidget {
  const RedClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      backgroundColor: Colors.red,
    );
  }
}
