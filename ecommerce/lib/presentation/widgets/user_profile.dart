import 'package:ecommerce/presentation/widgets/button_container.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            color: Color.fromARGB(248, 204, 204, 204),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'july 14, 2023',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  'Hello',
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
                SizedBox(width: 2),
                Text(
                  'Yohannes',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
        const Spacer(),
        const ButtonContainer(
          icon: Icons.notifications_outlined,
          iconColor: Colors.black87,
        ),
      ],
    );
  }
}
