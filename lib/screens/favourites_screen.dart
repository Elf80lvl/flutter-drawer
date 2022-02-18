import 'package:drawer/components/navigation_drawer.dart';
import 'package:flutter/material.dart';

class FavouritesScreen extends StatefulWidget {
  const FavouritesScreen({Key? key}) : super(key: key);

  @override
  _FavouritesScreenState createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourites'),
        centerTitle: true,
        //automaticallyImplyLeading: true,
      ),
      drawer: const NavigationDrawer(),
    );
  }
}
