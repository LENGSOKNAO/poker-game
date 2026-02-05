import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GaemScreen extends StatefulWidget {
  const GaemScreen({super.key});

  @override
  State<GaemScreen> createState() => _GaemScreenState();
}

class _GaemScreenState extends State<GaemScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Game Screen')),
      body: const Center(child: Text('Welcome to the Game Screen!')),
    );
  }
}
