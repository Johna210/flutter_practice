import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: const Color.fromARGB(255, 84, 81, 243),
      foregroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      child: const Icon(
        Icons.add,
        size: 30,
      ),
    );
  }
}
