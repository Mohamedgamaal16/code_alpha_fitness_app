import 'package:fitness_app/core/utils/app_router.dart';
import 'package:fitness_app/core/utils/app_styles.dart';
import 'package:fitness_app/core/utils/constants.dart';
import 'package:fitness_app/features/onboarding/peresntion/view_model/update_page/update_page_cubit.dart';
import 'package:fitness_app/features/onboarding/peresntion/views/widgets/onboard_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingScreenBody extends StatelessWidget {
  const OnBoardingScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final List<OnBoardContent> onBoard = [
      const OnBoardContent(
          image: "assets/images/1.png",
          title: TextConstants.onboarding1Title,
          description: TextConstants.onboarding1Description),
      const OnBoardContent(
          image: "assets/images/2.png",
          title: TextConstants.onboarding2Title,
          description: TextConstants.onboarding2Description),
      const OnBoardContent(
          image: "assets/images/3.png",
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
                if (context.read<UpdatePageCubit>().currentPage !=
                    onBoard.length - 1)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(onBoard.length, (index) {
                      return buildDot(index, context);
                    }),
                  ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: AppColors.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () async {
                      if (context.read<UpdatePageCubit>().currentPage ==
                          onBoard.length - 1) {
                        final SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        await prefs.setBool('OnBoarding', true);

                        // ignore: use_build_context_synchronously
                        GoRouter.of(context)
                            .pushReplacement(AppRouter.kSignInView);
                      } else {
                        context.read<UpdatePageCubit>().pageControler.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.ease);
                      }
                    },
                    child: context.read<UpdatePageCubit>().currentPage ==
                            onBoard.length - 1
                        ? GestureDetector(
                            onTap: () async {
                              final SharedPreferences sharedPreferences =
                                  GetIt.instance<SharedPreferences>();
                              await sharedPreferences.setBool(
                                  'onBoardingDone', true);
                              GoRouter.of(context)
                                  .pushReplacement(AppRouter.kSignInView);
                            },
                            child: Container(
                                width: MediaQuery.of(context).size.width * 0.5,
                                height:
                                    MediaQuery.of(context).size.width * 0.1,
                                alignment: Alignment.center,
                                child: Text("Get Started",
                                    style: AppStyles.notoSansStyleregular14(
                                        context))),
                          )
                        : SizedBox(width: MediaQuery.of(context).size.width * 0.2,
                                height:
                                    MediaQuery.of(context).size.width * 0.1,
                          child: const Icon(
                              FontAwesomeIcons.arrowRight,
                              color: Colors.white,
                            ),
                        ),
                  ),
                ),
              ],
            ),
            SkipWord(onBoard: onBoard),
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
        color: isCurrentPage
            ? AppColors.primaryColor
            : const Color.fromARGB(255, 192, 192, 192),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}

class SkipWord extends StatelessWidget {
  const SkipWord({
    super.key,
    required this.onBoard,
  });

  final List<OnBoardContent> onBoard;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      left: 10,
      child: TextButton(
        onPressed: () {
          context.read<UpdatePageCubit>().pageControler.animateToPage(
              onBoard.length - 1,
              duration: const Duration(milliseconds: 300),
              curve: Curves.ease);
        },
        child: context.read<UpdatePageCubit>().currentPage == onBoard.length - 1
            ? const Text('')
            : Text("Skip",
                style: AppStyles.notoSansStyleRegular12(context)
                    .copyWith(color: AppColors.primaryColor)),
      ),
    );
  }
}
