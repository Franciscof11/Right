import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:right/application/presentation/Widgets/about_me_text_button.dart';
import 'package:right/application/presentation/Widgets/heat_map.dart';
import 'package:right/application/presentation/widgets/remove_glow_effect.dart';
import 'package:right/utils/const_colors.dart';

class AboutMePage extends StatefulWidget {
  const AboutMePage({super.key});

  @override
  State<AboutMePage> createState() => _AboutMePageState();
}

class _AboutMePageState extends State<AboutMePage> {
  @override
  Widget build(BuildContext context) {
    double widthDisp = MediaQuery.of(context).size.width;
    double heightDisp = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: RemoveGlowEffect(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //
              // User Card
              //
              Container(
                height: heightDisp * 0.34,
                width: widthDisp,
                decoration: BoxDecoration(
                    color: LightColors().primary,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(45),
                      bottomRight: Radius.circular(45),
                    )),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const Padding(
                          padding: EdgeInsets.only(right: 32),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                color: LightColors().primaryContainer,
                                shape: BoxShape.circle,
                              ),
                              padding: const EdgeInsets.all(12),
                              child: Container(
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage('assets/imgs/Lebron.png'),
                                    fit: BoxFit.cover,
                                  ),
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 6,
                                      blurRadius: 8,
                                      offset: const Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 15),
                            Text(
                              'Lebron James',
                              style: GoogleFonts.inter(
                                color: LightColors().onPrimary,
                                fontSize: 28,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'Pai do Curry',
                              style: GoogleFonts.roboto(
                                color: DarkColors().primary,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          Icons.settings_outlined,
                          color: Colors.white,
                          size: 32,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //
              // Page
              //
              const SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.only(left: 22),
                child: Text(
                  'Desempenho',
                  style: GoogleFonts.inter(
                    color: LightColors().onPrimaryContainer,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Column(
                  children: [
                    const HeatMap(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      child: Divider(
                        color: Colors.grey.withOpacity(0.5),
                        height: 8,
                        thickness: 1,
                      ),
                    ),
                    AboutMeTextButton(
                      text: 'Linguagem',
                      textColor: LightColors().primary,
                      icon: Icons.public,
                      iconColor: LightColors().onPrimaryContainer,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 18),
                    AboutMeTextButton(
                      text: 'Tema',
                      textColor: LightColors().primary,
                      icon: Icons.wb_sunny_outlined,
                      iconColor: LightColors().onPrimaryContainer,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 18),
                    AboutMeTextButton(
                      text: 'Informação',
                      textColor: LightColors().primary,
                      icon: Icons.info_outline,
                      iconColor: LightColors().onPrimaryContainer,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 18),
                    AboutMeTextButton(
                      text: 'Sair',
                      textColor: ComumColors().error,
                      icon: Icons.logout_outlined,
                      iconColor: ComumColors().error,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 18),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
