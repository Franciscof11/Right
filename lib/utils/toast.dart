import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum ToastType {
  error,
  success,
}

showToast({
  required String message,
  required ToastType type,
  required BuildContext context,
  required double marginRight,
}) {
  type == ToastType.error
      ? Flushbar(
          messageText: Row(
            children: [
              Column(
                children: [
                  Text(
                    message,
                    style: GoogleFonts.raleway(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 8),
              const Icon(Icons.cancel_outlined, color: Colors.white),
            ],
          ),
          margin: EdgeInsets.only(top: 50, left: 0, right: marginRight),
          duration: const Duration(seconds: 4),
          flushbarPosition: FlushbarPosition.TOP,
          forwardAnimationCurve: Curves.decelerate,
          animationDuration: const Duration(seconds: 1),
          backgroundColor: Colors.red[500]!,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ).show(context)
      //
      //
      //
      //
      : Flushbar(
          messageText: Text(
            message,
            style: GoogleFonts.raleway(
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
          icon: const Icon(
            Icons.close_rounded,
            color: Colors.blue,
            weight: 20,
          ),
          margin: EdgeInsets.only(top: 80, left: 18, right: marginRight),
          duration: const Duration(seconds: 5),
          leftBarIndicatorColor: Colors.amber,
          flushbarPosition: FlushbarPosition.TOP,
          forwardAnimationCurve: Curves.decelerate,
          animationDuration: const Duration(seconds: 1),
          backgroundColor: Colors.white,
        ).show(context);
}
