import 'package:flutter/material.dart';

class GaemScreen extends StatelessWidget {
  const GaemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Game Screen')),
      body: const Center(child: Text('Welcome to the Game Screen!')),
    );
  }
}
 