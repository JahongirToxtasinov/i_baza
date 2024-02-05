import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:i_baza/assets/constants/icons.dart';
import 'package:i_baza/features/auth/data/data_source/data_source.dart';

import '../../../../assets/constants/colors.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
                child: SvgPicture.asset(AppIcons.arrowBack)),
            const Spacer(),
            const Text(
              "Profilni tahrirlash",
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w700
              ),
            ),
            const Spacer(),
          ],
        )
      ),
      backgroundColor: background,
      body: const Column(
        children: [
        ],
      ),
    );
  }
}
