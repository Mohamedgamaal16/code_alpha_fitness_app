import 'package:fitness_app/features/profile/persention/view/widgets/social_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocilaIconList extends StatelessWidget {
  const SocilaIconList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SocialIcon(icon: FontAwesomeIcons.xTwitter, onPressed: () {}),
        SocialIcon(
          icon: Icons.facebook,
          onPressed: () {},
        ),
        SocialIcon(
          icon: FontAwesomeIcons.instagram,
          onPressed: () {},
        )
      ],
    );
  }
}
