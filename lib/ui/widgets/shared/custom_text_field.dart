import 'package:flutter/material.dart';
import 'package:talk/colors.dart';
import 'package:talk/theme.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final Function(String val) onchanged;
  final double height;
  final TextInputAction inputAction;

  const CustomTextField(
      {super.key,
      required this.hint,
      required this.onchanged,
      this.height = 100.0,
      required this.inputAction});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
          color: isLightTheme(context) ? Colors.white : kBubbleDark,
          borderRadius: BorderRadius.circular(45),
          border: Border.all(
              color: isLightTheme(context)
                  ? const Color(0xFFC4C4C4)
                  : const Color(0xFF393937),
              width: 2.0)),
      child: TextField(
        keyboardType: TextInputType.text,
        onChanged: onchanged,
        textInputAction: inputAction,
        cursorColor: kPrimary,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(
            left: 16.0,
            right: 16.0,
            bottom: 8.0,
          ),
          hintText: hint,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
