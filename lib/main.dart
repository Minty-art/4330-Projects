import 'package:flutter/material.dart';
import 'screens/name_rating_screen.dart';

void main() {
  runApp(const MiniApp1());
}

class MiniApp1 extends StatelessWidget {
  const MiniApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'mini_App1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const NameRatingScreen(),
    );
  }
}
