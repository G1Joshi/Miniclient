import 'package:flutter/material.dart';
import 'package:marvel_characters/marvel_characters.dart';
import 'package:miniclient/src/di/di_initializer.dart';
import 'package:tide_design_system/tide_design_system.dart';

class BootPage extends StatefulWidget {
  const BootPage({super.key});

  @override
  State<BootPage> createState() => _BootPageState();
}

class _BootPageState extends State<BootPage> {
  final initialization = initDi();

  @override
  Widget build(BuildContext context) => FutureBuilder(
      future: initialization,
      builder: (context, shapshot) {
        if (shapshot.connectionState == ConnectionState.done) {
          return const MarvelCharactersPage();
        }
        return const Loading();
      });
}
