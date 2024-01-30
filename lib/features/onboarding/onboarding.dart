import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:i_baza/assets/constants/colors.dart';
import 'package:i_baza/core/widgets/language_button.dart';
import 'package:i_baza/core/widgets/skip_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../assets/constants/icons.dart';
import '../../assets/constants/images.dart';
import '../../core/injector/injector.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final controller = PageController();
  int thisPage = 0;

  @override
  void initState() {
    controller.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  DecorationImage _buildDecorationImage() {
    if (thisPage == 0) {
      return const DecorationImage(
        image: AssetImage(AppImages.onboarding_1),
        fit: BoxFit.cover,
      );
    } else if (thisPage == 1) {
      return const DecorationImage(
        image: AssetImage(AppImages.onboarding_2),
        fit: BoxFit.cover,
      );
    } else {
      return const DecorationImage(
        image: AssetImage(AppImages.onboarding_3),
        fit: BoxFit.cover,
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: BoxDecoration(
            image: _buildDecorationImage(),
          ),
          child: PageView(
            onPageChanged: (value) {
              thisPage = value;
            },
            controller: controller,
            children: [
              Column(
                children: [
                  const Gap(24),
                  Row(
                    children: [
                      const Gap(20),
                      const LangButton(),
                      const Spacer(),
                      SkipButton(
                        onTap: () {
                          serviceLocator<SharedPreferences>().setBool('wizard', true).then((_) {
                            Navigator.of(context).pushNamed("/login");
                          });
                        },
                        text: "O‘tkazib yuborish",
                      ),
                      const Gap(20),
                    ],
                  ),
                  const Gap(32),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                  ),
                  const Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                       Gap(20),
                      Text(
                        "10 000 dan ortiq\nmahsulotlar va qulay \ninterfeys",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const Gap(12),
                  const Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Gap(20),
                      Text(
                        "iBaza ilovasida 10 000 dan ortiq mahsulotlar joy \nolgan",
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ],
                  ),

                ],
              ),

              Column(
                children: [
                  const Gap(24),
                  Row(
                    children: [
                      const Gap(20),
                      const LangButton(),
                      const Spacer(),
                      SkipButton(
                        onTap: () {
                          serviceLocator<SharedPreferences>().setBool('wizard', true).then((_) {
                            Navigator.of(context).pushNamed("/login");
                          });
                        },
                        text: "O‘tkazib yuborish",
                      ),
                      const Gap(20),
                    ],
                  ),
                  const Gap(32),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                  ),
                  const Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Gap(20),
                      Text(
                        "Maxsus chegirmalar!",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const Gap(12),
                  const Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Gap(20),
                      Text(
                        "Ilova orqali maxsus chegirma va kuponlardan \nbaxramand bo‘ling!",
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ],
                  ),

                ],
              ),

              Column(
                children: [
                  const Gap(24),
                  Row(
                    children: [
                      const Gap(20),
                      const LangButton(),
                      const Spacer(),
                      SkipButton(
                        onTap: () {
                          serviceLocator<SharedPreferences>().setBool('wizard', true).then((_) {
                            Navigator.of(context).pushNamed("/login");
                          });
                        },
                        text: "O‘tkazib yuborish",
                      ),
                      const Gap(20),
                    ],
                  ),
                  const Gap(32),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                  ),
                  const Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Gap(20),
                      Text(
                        "Hoziroq ro‘yxatdan o‘ting!",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const Gap(12),
                  const Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Gap(20),
                      Text(
                        "Ro‘yxatdan o‘tib, ilova imkoniyatlaridan to‘liq \nfoydalaning",
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ],
                  ),

                ],
              ),

            ],
          ),
        ),
        //___________________________________________________________________________________________________//
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            thisPage == 2
                ? GestureDetector(
              onTap: () {
                controller.previousPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.ease);
              },
              child: Container(
                height: 44,
                width: 44,
                margin: EdgeInsets.only(
                    bottom: MediaQuery.of(context).padding.bottom + 24,
                    left: 24),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: grey,
                ),
                child: SvgPicture.asset(AppIcons.arrowLeft),
              ),
            )
                : const SizedBox(
              height: 44,
              width: 66,
            ),
            const Spacer(),
            AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              height: 8,
              width: thisPage == 0 ? 24 : 8,
              margin: EdgeInsets.only(
                  bottom: MediaQuery.of(context).padding.bottom + 30, right: 4),
              decoration: BoxDecoration(
                color: grey ,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              height: 8,
              width: thisPage == 1 ? 24 : 8,
              margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).padding.bottom + 30,
              ),
              decoration: BoxDecoration(
                color: grey,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () async {
                if (thisPage == 0) {
                  controller.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.ease);
                } else {
                  await serviceLocator<SharedPreferences>()
                      .setBool('wizard', true);

                  Navigator.of(context).pushNamed("/login");
                }
              },
              child: Container(
                height: 44,
                width: 44,
                margin: EdgeInsets.only(
                    bottom: MediaQuery.of(context).padding.bottom + 24,
                    right: 24),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: grey,
                ),
                child: SvgPicture.asset(AppIcons.arrowRight),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
