import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_color_generation/feature/home_screen/home_screen_page.dart';
import 'package:random_color_generation/provider/home_screen_provider.dart';

class RandomCodeGeneratorApp extends StatelessWidget {
  const RandomCodeGeneratorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeScreenProvider>(
          create: (ctx) => HomeScreenProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Random Code Generation Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeScreenPage(),
      ),
    );
  }
}
