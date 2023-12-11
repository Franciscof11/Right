import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:right/utils/const_colors.dart';

class CardCollection extends StatefulWidget {
  const CardCollection({super.key, required this.collectionName});
  final String collectionName;
  @override
  State<CardCollection> createState() => _CardCollectionState();
}

class _CardCollectionState extends State<CardCollection> {
  bool favorite = false;
  @override
  Widget build(BuildContext context) {
    int numb = Random().nextInt(100);
    int numb2 = Random().nextInt(30);
    int numb3 = Random().nextInt(100);
    int numb4 = Random().nextInt(100);
    double percent = Random().nextDouble();
    double widthDisp = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18),
      child: Material(
        elevation: 20,
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              stops: const [0.02, 0.02],
              colors: [LightColors().primary, Colors.white],
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        Text(
                          widget.collectionName,
                          style: GoogleFonts.inter(
                            color: LightColors().onPrimaryContainer,
                            fontSize: 26,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'acertos',
                                      style: GoogleFonts.roboto(
                                        color: LightColors().onPrimaryContainer,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '$numb3%',
                                          style: GoogleFonts.roboto(
                                            color: Colors.grey,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        const Icon(
                                          Icons.arrow_circle_up_rounded,
                                          size: 15,
                                          color: Colors.green,
                                        ),
                                      ],
                                    )
                                    //
                                  ],
                                ),
                                const SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'erros',
                                      style: GoogleFonts.roboto(
                                        color: LightColors().onPrimaryContainer,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '$numb4%',
                                          style: GoogleFonts.roboto(
                                            color: Colors.grey,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                        const Icon(
                                          Icons.arrow_circle_down_rounded,
                                          size: 15,
                                          color: Colors.red,
                                        ),
                                      ],
                                    ),
                                    //
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                favorite = !favorite;
                              });
                            },
                            child: Icon(
                              favorite == true
                                  ? Icons.star
                                  : Icons.star_outline,
                              color: LightColors().primary,
                              size: 32,
                            ),
                          ),
                          const SizedBox(height: 14),
                          const Icon(Icons.more_vert),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                //
                //Erros e Acertos
                //
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    'Última tentativa',
                    style: GoogleFonts.inter(
                      color: Colors.grey,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                LinearPercentIndicator(
                  barRadius: const Radius.circular(10),
                  animation: true,
                  animationDuration: 1900,
                  trailing: Padding(
                    padding: const EdgeInsets.only(left: 6, bottom: 8),
                    child: Text(
                      '$numb/12',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: LightColors().onPrimaryContainer,
                      ),
                    ),
                  ),
                  lineHeight: 6,
                  percent: percent,
                  backgroundColor: LightColors().primaryContainer,
                  progressColor: LightColors().primary,
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
