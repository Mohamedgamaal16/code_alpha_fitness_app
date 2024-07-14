import 'package:fitness_app/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    const double avatarRadius = 60.0;
    const double containerPadding = 6.0;

    return Stack(
      
      children: [
        Container(width: MediaQuery.of(context).size.width*.9,),
        Center(
          child: Stack(
            children: [
              Container(
                width: avatarRadius * 2 + containerPadding * 2,
                height: avatarRadius * 2 + containerPadding * 2,
                decoration: const BoxDecoration(
                  color: AppColors.primaryColor,
                  shape: BoxShape.circle,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(containerPadding),
                  child: CircleAvatar(
                    radius: avatarRadius,
                    backgroundImage: AssetImage("assets/images/2.png"),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 10,
          top: 5,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: AppColors.opacityPrimaryColor,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.pen,
                  size: 17,
                  color: AppColors.primaryColor,
                )),
          ),
        ),
      ],
    );
  }
}
