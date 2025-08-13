import 'package:flutter/material.dart';

class DailogBoxScreen extends StatelessWidget {
  const DailogBoxScreen({super.key});

  void _showMyDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false, // User must tap button to close
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Dialog Title'),
          content: const Text('This is a simple dialog box example.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('OK Pressed!')),
                );
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Dialog Box Example')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showMyDialog(context),
          child: const Text('Show Dialog Box'),
        ),
      ),
    );
  }
}