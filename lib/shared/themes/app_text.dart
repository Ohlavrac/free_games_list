import 'package:flutter/cupertino.dart';
import 'package:free_games_list/shared/themes/app_color.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText {
  static final title = GoogleFonts.pressStart2p(
    fontSize: 16,
    color: AppColor.text,
  );

  static final gamePlataform = GoogleFonts.nunito(
    fontSize: 12,
    color: AppColor.subtitleColor
  );

  static final nameGame = GoogleFonts.nunito(
    fontSize: 16,
    color: AppColor.text,
    fontWeight: FontWeight.bold
  );

  static final pricePrimary = GoogleFonts.pressStart2p(
    fontSize: 16,
    color: AppColor.extra,
    fontWeight: FontWeight.bold
  );

  static final price = GoogleFonts.pressStart2p(
    fontSize: 14,
    color: AppColor.text,
  );

  static final button = GoogleFonts.pressStart2p(
    fontSize: 10,
    color: AppColor.text,
  );
}