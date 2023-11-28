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
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        width: widthDisp,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 4,
                spreadRadius: 2,
                offset: Offset(0, 4),
              )
            ],
            borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Row(
            children: [
              SizedBox(
                width: widthDisp * 0.68,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    SizedBox(
                      width: widthDisp,
                      child: Text(
                        widget.collectionName,
                        style: GoogleFonts.inter(
                          color: LightColors().onPrimaryContainer,
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(width: widthDisp * 0.46),
                    const SizedBox(
                      height: 5,
                    ),
                    //
                    //Erros e Acertos
                    //
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
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const Icon(
                                  Icons.arrow_circle_down_rounded,
                                  size: 15,
                                  color: Colors.red,
                                ),
                              ],
                            )
                            //
                          ],
                        ),
                      ],
                    ),
                    //
                    //
                    //

                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        '$numb2 Dias de prática',
                        style: GoogleFonts.roboto(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    LinearPercentIndicator(
                      barRadius: const Radius.circular(10),
                      animation: true,
                      animationDuration: 1900,
                      trailing: Text(
                        '$numb%',
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.black),
                      ),
                      width: widthDisp * 0.6,
                      lineHeight: 4,
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
              Expanded(
                child: Column(
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            favorite = !favorite;
                          });
                        },
                        icon: Icon(
                          favorite == true ? Icons.star : Icons.star_outline,
                          color: LightColors().primary,
                          size: 32,
                        )),
                    const SizedBox(height: 18),
                    const Icon(Icons.more_vert)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
