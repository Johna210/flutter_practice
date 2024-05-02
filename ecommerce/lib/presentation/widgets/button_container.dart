import 'package:flutter/material.dart';

class ButtonContainer extends StatelessWidget {
  const ButtonContainer(
      {super.key, required this.icon, required this.iconColor});
  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Icon(
        icon,
        color: iconColor,
      ),
    );
  }
}
