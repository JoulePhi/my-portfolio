import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const background = Color(0xff282C33);
const primary = Color(0xffC778DD);
const grey = Color(0xffABB2BF);
const white = Color(0xffffffff);

final whiteText = GoogleFonts.firaCode(color: white);
final primaryText = GoogleFonts.firaCode(color: primary);
final greyText = GoogleFonts.firaCode(color: grey);
const medium = FontWeight.w500;
const semiBold = FontWeight.w600;
const bold = FontWeight.w700;

spaceV(double height) {
  return SizedBox(
    height: height,
  );
}

spaceH(double width) {
  return SizedBox(
    width: width,
  );
}
