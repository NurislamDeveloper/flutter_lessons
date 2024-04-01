import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:piano_con/piano.dart';

void main() {
    WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight])
    .then((_) {
    });
  runApp(const MyApp());
}


