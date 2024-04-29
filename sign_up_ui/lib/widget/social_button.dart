import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:sign_up_ui/pallete.dart';

// ignore: must_be_immutable
class SocialButton extends StatelessWidget {
  final String iconPath;
  final String label;
  final double horizontalPadding;
  Color iconColor;
  SocialButton({
    Key? key,
    required this.iconPath,
    required this.label,
    this.horizontalPadding = 40,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: SvgPicture.asset(
        iconPath,
        width: 25,
        color: iconColor,
      ),
      label: Text(
        label,
        style: const TextStyle(fontSize: 13, color: Pallete.whiteColor),
      ),
      style: TextButton.styleFrom(
        padding:
            EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 10),
        shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: Pallete.borderColor,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
