import 'package:flutter/material.dart';
import 'package:miniclient/src/presentation/boot_page.dart';
import 'package:tide_design_system/tide_design_system.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Miniclient',
        theme: miniclientThemeData,
        home: const BootPage(),
      );
}
