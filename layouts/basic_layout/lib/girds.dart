import 'package:flutter/material.dart';

Widget buildGrid() => GridView.extent(
      maxCrossAxisExtent: 150,
      padding: const EdgeInsets.all(4),
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: _buildGridTileList(3),
    );

List<Container> _buildGridTileList(int count) => List.generate(
      count,
      (index) => Container(
        child: Image.asset('assets/images/pic$index.jpg'),
      ),
    );
