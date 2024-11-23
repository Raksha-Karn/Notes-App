import 'package:flutter/material.dart';
import 'package:notes_app/models/note_database.dart';
import 'package:notes_app/pages/notes_page.dart';
import 'package:notes_app/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NoteDatabase.initialize();
  
  runApp(
    MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => NoteDatabase()),
    ChangeNotifierProvider(create: (context) => ThemeProvider())
    ],
    child: const MainApp()
    )
    );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const NotesPage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
