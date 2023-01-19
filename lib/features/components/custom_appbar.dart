// ignore_for_file: prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_octicons/flutter_octicons.dart';
import 'package:routemaster/routemaster.dart';

import '../../theme/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final title;
  final List<Widget>? actions;
  CustomAppBar({Key? key, required this.title, this.actions}) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: appBackgroundColor,
      elevation: 0,
      leading: IconButton(
          icon: const Icon(
            OctIcons.arrow_left_16,
            color: appWhiteColor,
            size: 15,
          ),
          onPressed: () {
            Routemaster.of(context).pop();
          }),
      title: Text(
        title,
        style: const TextStyle(
          color: appWhiteColor,
          fontWeight: FontWeight.bold,
          fontSize: 13,
        ),
      ),
      actions: actions,
      centerTitle: true,
    );
  }
}
