import 'package:flutter/material.dart';

import '../../../../assets/constants/colors.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(
            child: Text(
              "Profilni tahrirlash",
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w700
              ),
            )),
      ),
      backgroundColor: background,
      body: Column(
        children: [
        ],
      ),
    );
  }
}
