import 'package:counter_provider/home.dart';
import 'package:counter_provider/list_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => NumberListProvider(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.pink,
          colorScheme:
              ColorScheme.fromSeed(seedColor: Color.fromARGB(222, 235, 3, 235)),
          useMaterial3: true,
        ),
        home: const Home(),
      ),
    );
  }
}
