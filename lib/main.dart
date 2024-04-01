import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:madnotes/view/splash.dart';
import 'model/notes_model.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  var catBox = await Hive.openBox('categories');
  Hive.registerAdapter(NotesModelAdapter());
  var box = await Hive.openBox('noteBox');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}