import 'package:fitness_app/features/profile/data/models/menu_item_model.dart';
import 'package:fitness_app/features/profile/persention/view/widgets/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuItemList extends StatelessWidget {
  const MenuItemList({super.key});
  
  static List<MenuItemModel> items = [
    MenuItemModel(title: "Reminder", icon: FontAwesomeIcons.angleRight),
    MenuItemModel(
        title: "Rate us on Play Store", icon: FontAwesomeIcons.googlePlay),
    MenuItemModel(title: "Terms and Conditions", icon: Icons.description),
    MenuItemModel(title: "Sign Out", icon: FontAwesomeIcons.arrowRightFromBracket),
  ];
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return MenuItem(menuItemModel: items[index]);
      },
    );
  }
}
