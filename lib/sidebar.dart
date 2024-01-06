import 'package:flutter/material.dart';
import 'package:soundnova/pages/about.dart';

import 'main.dart';

TextStyle _textStyle = const TextStyle(color: Colors.white);

Widget _menuItem(String title, void Function()? onTap) {
  return ListTile(
    title: Text(title, style: _textStyle),
    onTap: onTap,
  );
}

Drawer sidebar(String appTitle) {
  return Drawer(
      backgroundColor: Colors.blueGrey,
      child: SizedBox(
        child: Align(
            alignment: Alignment.bottomCenter,
            child: ListView(children: <Widget>[
              ListTile(
                title: Center(child: Text(appTitle, style: _textStyle)),
                onTap: () {},
              ),
              const Divider(),
              _menuItem('Home', () {
                runApp(const SoundNova());
              }),
              _menuItem('Playlists', () {}),
              _menuItem('Cast', () {}),
              _menuItem('About', () {
                runApp(const SoundNovaAbout());
              }),
            ])),
      ));
}
