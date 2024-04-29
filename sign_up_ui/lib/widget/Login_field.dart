import 'package:flutter/material.dart';
import 'package:sign_up_ui/pallete.dart';

class LoginField extends StatelessWidget {
  final String hintText;
  const LoginField({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screeheight = MediaQuery.of(context).size.height;
    return ConstrainedBox(
        constraints: BoxConstraints(
            maxWidth: screenWidth * .75, maxHeight: screeheight * 0.08),
        child: TextFormField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 15),
            enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Pallete.borderColor, width: 3),
                borderRadius: BorderRadius.circular(8)),
            focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Pallete.gradient2, width: 3),
                borderRadius: BorderRadius.circular(8)),
            hintText: hintText,
          ),
        ));
  }
}
