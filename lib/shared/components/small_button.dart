import 'package:flutter/material.dart';
import 'package:free_games_list/shared/themes/app_color.dart';
import 'package:free_games_list/shared/themes/app_text.dart';

class SmallButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  const SmallButton({ Key? key, required this.label, required this.onPressed }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 38,
      child: ElevatedButton(
        child: Text(label, style: AppText.button,),
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: AppColor.button,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(56)
          ),
        ),
      ),
    );
  }
}