import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:ecommerce/presentation/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
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
            Expanded(
              child: ListView(
                children: const [
                  ContentCard(),
                  ContentCard(),
                  ContentCard(),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: const AddButton(),
    );
  }
}
