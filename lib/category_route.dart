// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:hello/category.dart';

// TODO: Check if we need to import anything

// TODO: Define any constants
final _backgroundColor = Colors.white;
/// Category Route (screen).
///
/// This is the 'home' screen of the Unit Converter. It shows a header and
/// a list of [Categories].
///
/// While it is named CategoryRoute, a more apt name would be CategoryScreen,
/// because it is responsible for the UI at the route's destination.
class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  static const _categoryNames = <String>[
    'Gol',
    'Up',
    'Polo',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  Widget _buildCategoryList(List<Widget> categories){
      return ListView.builder(
        itemBuilder: (BuildContext context, int index) => categories[index],
        itemCount: categories.length,
      );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: Create a list of the eight Categories, using the names and colors
    // from above. Use a placeholder icon, such as `Icons.cake` for each
    // Category. We'll add custom icons later.
    final categories = <Category>[];

    for (var i = 0; i < _categoryNames.length; i++) {
      categories.add(Category(
        name: _categoryNames[i],
        color: _baseColors[i],
        iconLocation: Icons.directions_car,
      ));
    }

    // TODO: Create a list view of the Categories
    final listView = Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: _buildCategoryList(categories),
    );

    // TODO: Create an App Bar
    final appBar = AppBar(
      elevation: 0.0,
      title: Text('Brasal Autoatendimento', style: TextStyle(
        color: Colors.black,
        fontSize: 30.0
      ),),
      centerTitle: true,
      backgroundColor: Colors.white,
    );

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}