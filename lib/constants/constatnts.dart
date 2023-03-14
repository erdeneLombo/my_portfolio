import 'package:flutter/material.dart';

//* Background Color
var myDefaultBackground = const Color(0xFFE0E0E0);

//* Drawer Background Image
var myBackgroundImage = Container(
    decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/sakura.jpg'))));

//* AppBar
var myAppBar = AppBar(backgroundColor: const Color(0xFF212121));

//*Drawer
var myDrawer = const Drawer(
  child: Column(
    children: [
      DrawerHeader(child: CircleAvatar()),
      ListTile(
          leading: Icon(Icons.home),
          title: Text('D A S H B O A R D',
              style: TextStyle(fontWeight: FontWeight.w700))),
      ListTile(
          leading: Icon(Icons.chat),
          title:
              Text('C H A T', style: TextStyle(fontWeight: FontWeight.w700))),
      ListTile(
          leading: Icon(Icons.settings),
          title: Text('S E T T I N G S',
              style: TextStyle(fontWeight: FontWeight.w700))),
      ListTile(
          leading: Icon(Icons.logout),
          title: Text('L O G O U T',
              style: TextStyle(fontWeight: FontWeight.w700)))
    ],
  ),
);
