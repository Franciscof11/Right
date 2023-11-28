import 'package:flutter/material.dart';

Future showModalBottom(BuildContext context, Widget builder) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true, // Pra controlar altura do modal
    barrierColor:
        Colors.grey.shade100.withOpacity(0.6), //Cor de Fundo ( Efeito Blurr )
    builder: (context) => builder,
    shape: const ContinuousRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(85))),
  );
}
