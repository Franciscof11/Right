import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMeTextButton extends StatelessWidget {
  const AboutMeTextButton(
      {super.key,
      required this.textColor,
      required this.iconColor,
      required this.onPressed,
      required this.text,
      required this.icon});
  final String text;
  final IconData icon;
  final Color textColor;
  final Color iconColor;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
          size: 28,
        ),
        const SizedBox(width: 8),
        Text(
          text,
          style: GoogleFonts.roboto(
            color: textColor,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
