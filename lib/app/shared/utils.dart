import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const background = Color(0xff282C33);
const primary = Color(0xffC778DD);
const grey = Color(0xffABB2BF);
const lightGrey = Color.fromARGB(255, 216, 224, 240);
const white = Color(0xffffffff);

final whiteText = GoogleFonts.firaCode(color: white);
final primaryText = GoogleFonts.firaCode(color: primary);
final greyText = GoogleFonts.firaCode(color: grey);
final lightGreyText = GoogleFonts.firaCode(color: lightGrey);
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

primaryButton({
  required String title,
  required Function(bool) onHover,
  required Function() onTap,
  required bool isHover,
}) {
  return InkWell(
    onHover: onHover,
    onTap: onTap,
    child: AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: primary),
        color: isHover ? primary.withOpacity(.2) : Colors.transparent,
      ),
      child: Text(
        title,
        style: whiteText.copyWith(
          fontSize: 16,
          fontWeight: medium,
        ),
      ),
    ),
  );
}
