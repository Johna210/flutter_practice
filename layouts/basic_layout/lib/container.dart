import 'package:flutter/material.dart';

Widget _buildDecoratedImage() {
  return Expanded(
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(width: 10, color: Colors.black38),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      margin: const EdgeInsets.all(4),
      child: Image.asset('assets/images/pic2.jpg'),
    ),
  );
}

Widget _buildImageRow() {
  return Row(
    children: [
      _buildDecoratedImage(),
      _buildDecoratedImage(),
    ],
  );
}

Widget BuildImageColumn() {
  return Container(
    decoration: const BoxDecoration(
      color: Colors.black26,
    ),
    child: Column(
      children: [
        _buildImageRow(),
        _buildImageRow(),
      ],
    ),
  );
}
