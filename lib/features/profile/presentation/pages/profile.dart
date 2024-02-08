import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:i_baza/assets/constants/colors.dart';
import 'package:i_baza/assets/constants/icons.dart';
import 'package:i_baza/features/profile/presentation/pages/edit_profile.dart';
import 'package:i_baza/features/profile/presentation/widgets/exit.dart';

import '../../../auth/data/data_source/data_source.dart';
import '../widgets/user_data.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Gap(72),
            const Text(
                      "Profil ma’lumotlari",
                      style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w700
                      ),
                    ),
          ],
        ),
      ),
      backgroundColor: background,
      body: Column(
        children: [
            UserDataUi(user: user,onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditProfileScreen(),
                ),
              );
            },
            ),
            ExitButton(),
        ],
      ),
    );
  }
}
