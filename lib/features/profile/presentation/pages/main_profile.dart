import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:i_baza/assets/constants/icons.dart';
import 'package:i_baza/assets/constants/images.dart';
import 'package:i_baza/features/profile/presentation/widgets/square_widget.dart';
import 'package:i_baza/features/profile/presentation/widgets/tail_widgets.dart';

import '../../../../assets/constants/colors.dart';

class MainProfile extends StatelessWidget {
  const MainProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Column(
        children: [
          const Gap(68),
          ListTile(
            onTap: (){
              Navigator.of(context).pushNamed("/profile");
            },
            leading: Container(
                width: 72,
                height: 72,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 1, color: Colors.grey),
                ),
                child: Image.asset(AppImages.bred)
            ),
            title: const Text("Pitt Bred",
              style: TextStyle(
                  fontWeight: FontWeight.w700,fontSize: 20),),
            trailing: SvgPicture.asset(AppIcons.arrowRight),
          ),
            const Gap(24),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SquareWidget(
                    icon: AppIcons.like,
                    title: 'Saqlanganlar',
                    onTap: (){}
                ),
                SquareWidget(
                    icon: AppIcons.bell,
                    title: 'Xabarnomalar',
                    onTap: (){}
                ),
                SquareWidget(
                    icon: AppIcons.settings,
                    title: 'Sozlamalar',
                    onTap: (){}
                ),
              ],
            ),
          const Gap(24),
          TailWidgets(
            onTap: () {},
              icon: AppIcons.sNotes,
              title: "Yo‘riqnoma",
          ),
          const Gap(16),
          TailWidgets(
              onTap: () {},
              icon: AppIcons.sIB,
              title: 'Ilova haqida'
          ),
          const Gap(16),
          TailWidgets(
              onTap: () {},
              icon: AppIcons.sAbout,
              title: 'Foydalanish qoidalari'
          ),
          const Gap(16),
          TailWidgets(
              onTap: () {},
              icon: AppIcons.sStar,
              title: 'Bonus balansi'
          ),
          const Gap(16),
          TailWidgets(
              onTap: () {},
              icon: AppIcons.sCall,
              title: 'Yordam'
          ),
        ],
      ),
    );
  }
}
