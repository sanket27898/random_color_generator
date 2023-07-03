import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_color_generation/provider/home_screen_provider.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({super.key});

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  ///Provider
  late HomeScreenProvider _homeScreenProvider;

  @override
  Widget build(BuildContext context) {
    _homeScreenProvider = Provider.of<HomeScreenProvider>(context);
    return Scaffold(
      backgroundColor: _homeScreenProvider.backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Random Color Generation Demo"),
      ),
      body: InkWell(
        splashColor: Colors.transparent,
        onTap: () => _homeScreenProvider.changeColor(),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                'Hey There',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
