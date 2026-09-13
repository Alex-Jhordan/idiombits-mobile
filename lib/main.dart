import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'features/phrases/data/models/local_phrase.dart';

late Isar isarInstance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final dir = await getApplicationDocumentsDirectory();

  isarInstance = await Isar.open(
    [LocalPhraseSchema],
    directory: dir.path,
    inspector: true,
  );

  runApp(const IdiomBitsApp());
}

class IdiomBitsApp extends StatelessWidget {
  const IdiomBitsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IdiomBits',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: Center(
          child: Text('IdiomBits Mobile Initialized'),
        ),
      ),
    );
  }
}