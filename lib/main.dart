import 'package:bottom_sheetbar_dailoughbox/bottomsheet_screen.dart';
import 'package:bottom_sheetbar_dailoughbox/dailogbox_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Dialog & Bottom Sheet Demo')),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) =>const DailogBoxScreen()),
                  );
                },
                child: const Text('Go to Dialog Box Screen'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const BottomSheetScreen()),
                  );
                },
                child: const Text('Go to Bottom Sheet Screen'),
              ),
            ],
          ),
        ),
    ));
  }
}
