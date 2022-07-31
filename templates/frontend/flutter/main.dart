import 'package:flutter/material.dart';
import 'pages/{{ lower .Frontend.FirstPage }}/page_{{ lower .Frontend.FirstPage }}.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '{{ .Frontend.AppTitle }}',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const {{ .Frontend.FirstPage }}Page(),
    );
  }
}
