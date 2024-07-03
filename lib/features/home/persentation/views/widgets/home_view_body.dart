import 'package:fitness_app/core/utils/app_styles.dart';
import 'package:fitness_app/features/home/persentation/views/widgets/home_header.dart';
import 'package:fitness_app/features/home/persentation/views/widgets/time_spent_container.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: HomeHeader()),
            const SliverToBoxAdapter(child: SizedBox(height: 50)),
            const SliverToBoxAdapter(
              child: TimeSpentContainer(),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 20)),
            SliverToBoxAdapter(
              child: Text(
                "Discover new workouts",
                style: AppStyles.notoSansStyleBold20(context),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
