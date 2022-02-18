import 'package:drawer/screens/favourites_screen.dart';
import 'package:drawer/screens/user_screen.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildHeader(context),
            buildMenuItems(context),
          ],
        ),
      ),
    );
  }

  buildHeader(context) => Material(
        color: Theme.of(context).primaryColor,
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => UserScreen()));
          },
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top + 24, bottom: 24),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 52,
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1484399172022-72a90b12e3c1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'),
                ),
                SizedBox(height: 16),
                Text(
                  'Kira Knightley',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                Text(
                  'kira@gmail.com',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      );

  buildMenuItems(context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.home_outlined),
              title: Text('Home'),
              onTap: () {
                //*go to new page and close previous page
                Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (context) {
                  return Home();
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite_outline),
              title: Text('Favourites'),
              onTap: () {
                //Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => FavouritesScreen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.work_outline),
              title: Text('Workflow'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.update_outlined),
              title: Text('Updates'),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.account_tree_outlined),
              title: Text('Plugins'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.notifications_outlined),
              title: Text('Home'),
              onTap: () {},
            ),
          ],
        ),
      );
}
