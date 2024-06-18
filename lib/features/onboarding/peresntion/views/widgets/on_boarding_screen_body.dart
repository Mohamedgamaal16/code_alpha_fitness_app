import 'package:fitness_app/core/utils/app_router.dart';
import 'package:fitness_app/core/utils/app_styles.dart';
import 'package:fitness_app/core/utils/constants.dart';
import 'package:fitness_app/features/onboarding/peresntion/view_model/update_page/update_page_cubit.dart';
import 'package:fitness_app/features/onboarding/peresntion/views/widgets/onboard_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingScreenBody extends StatelessWidget {
  const OnBoardingScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final List<OnBoardContent> onBoard = [
      const OnBoardContent(
          image: "assets/images/onboarding1.jpg",
          title: TextConstants.onboarding1Title,
          description: TextConstants.onboarding1Description),
      const OnBoardContent(
          image: "assets/images/onboarding2.jpg",
          title: TextConstants.onboarding2Title,
          description: TextConstants.onboarding2Description),
      const OnBoardContent(
          image: "assets/images/onboarding3.jpg",
          title: TextConstants.onboarding3Title,
          description: TextConstants.onboarding3Description),
    ];

    return BlocBuilder<UpdatePageCubit, UpdatePageState>(
      builder: (context, state) {
        return Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    itemCount: onBoard.length,
                    controller: context.read<UpdatePageCubit>().pageControler,
                    onPageChanged: (index) {
                      context.read<UpdatePageCubit>().updatePage(index);
                    },
                    itemBuilder: (context, index) => onBoard[index],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(onBoard.length, (index) {
                        return buildDot(index, context);
                      }),
                    ),
                    const Spacer(),
                    ElevatedButton(
                      style: const ButtonStyle(
                          elevation: MaterialStatePropertyAll(0)),
                      onPressed: () async {
                        if (context.read<UpdatePageCubit>().currentPage ==
                            onBoard.length - 1) {
                          final SharedPreferences prefs =
                              await SharedPreferences.getInstance();
                          await prefs.setBool('OnBoarding', true);

                          GoRouter.of(context)
                              .pushReplacement(AppRouter.kHomeView);
                        } else {
                          context
                              .read<UpdatePageCubit>()
                              .pageControler
                              .nextPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.ease);
                        }
                      },
                      child: context.read<UpdatePageCubit>().currentPage ==
                              onBoard.length - 1
                          ? const Text("Done")
                          : const Icon(FontAwesomeIcons.arrowRight),
                    ),
                    const SizedBox(width: 15),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
            Positioned(
              top: 10,
              left: 10,
              child: TextButton(
                onPressed: () {
                  context.read<UpdatePageCubit>().pageControler.animateToPage(
                      onBoard.length - 1,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.ease);
                },
                child:context.read<UpdatePageCubit>().currentPage ==
                              onBoard.length - 1 ? Text(''): Text("Skip",
                    style: AppStyles.notoSansStyleRegular12(context)) ,
              ),
            ),
          ],
        );
      },
    );
  }

  Container buildDot(int index, BuildContext context) {
    final isCurrentPage = context.read<UpdatePageCubit>().currentPage == index;
    return Container(
      height: isCurrentPage ? 10 : 8,
      width: isCurrentPage ? 20 : 16,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: isCurrentPage ? AppColors.primaryColor : AppColors.grey,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
