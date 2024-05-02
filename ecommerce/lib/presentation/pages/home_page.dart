import 'package:ecommerce/presentation/widgets/button_container.dart';
import 'package:ecommerce/presentation/widgets/content_card.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:ecommerce/presentation/widgets/user_profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // User Profile
            const UserProfile(),
            const SizedBox(height: 50),
            Row(
              children: [
                Text(
                  'Available Products',
                  style: GoogleFonts.poppins(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                const ButtonContainer(
                    icon: Icons.search, iconColor: Colors.grey)
              ],
            ),

            const SizedBox(
              height: 20,
            ),
            const ContentCard(),
            const ContentCard(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}
