import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/note_database.dart';
import 'pages/notes_page.dart';
import 'theme/themeProvider.dart';

Future<void> main() async {
  //initialize note isar database
  WidgetsFlutterBinding.ensureInitialized();
  await NoteDatabase.initialize();
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => NoteDatabase()),
      ChangeNotifierProvider(create: (context) => ThemeProvider())
    ],
    child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes App',
      themeMode: ThemeMode.system,
      theme: Provider.of<ThemeProvider>(context).themeData,
      debugShowCheckedModeBanner: false,
      home: const NotesPage(),
    );
  }
}