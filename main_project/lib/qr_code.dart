import 'package:flutter/material.dart';

class QrCode extends StatelessWidget {
  const QrCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          "QR_Code",
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.normal,
              ),
        ),
      ),
    );
  }
}
