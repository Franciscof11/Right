import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../utils/const_colors.dart';

class DrawerHome extends StatelessWidget {
  const DrawerHome({super.key});

  @override
  Widget build(BuildContext context) {
    double widthDisp = MediaQuery.of(context).size.width;
    return Container(
      width: widthDisp * 0.7,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ///
          /// User Card
          ///
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 26, top: 12, bottom: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          color: LightColors().primary,
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
                          color: LightColors().primary,
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 4),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.settings_outlined,
                      color: LightColors().primary,
                      size: 32,
                    ),
                  ),
                ],
              ),
            ),
          ),

          ///
          /// Drawer Options
          ///
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                //
                //
                //
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Row(
                    children: [
                      Icon(
                        Icons.dns_outlined,
                        color: LightColors().onPrimaryContainer,
                        size: 30,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Criar nova coleção',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: LightColors().primary,
                        ),
                      )
                    ],
                  ),
                ),
                //
                //
                //
                const SizedBox(height: 22),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Row(
                    children: [
                      Icon(
                        Icons.layers_outlined,
                        color: LightColors().onPrimaryContainer,
                        size: 30,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Meus Cartões',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: LightColors().primary,
                        ),
                      )
                    ],
                  ),
                ),
                //
                //
                //
                const SizedBox(height: 22),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star_border_rounded,
                        color: LightColors().onPrimaryContainer,
                        size: 30,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Favoritos',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: LightColors().primary,
                        ),
                      )
                    ],
                  ),
                ),
                //
                //
                //
                const SizedBox(height: 22),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Row(
                    children: [
                      const SizedBox(width: 4),
                      SvgPicture.asset(
                        'assets/icons/dashboard.svg',
                        width: 24,
                        height: 24,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Dashboard',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: LightColors().primary,
                        ),
                      )
                    ],
                  ),
                ),
                //
                //
                //
                const SizedBox(height: 22),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Row(
                    children: [
                      Icon(
                        Icons.person_outline_rounded,
                        color: LightColors().onPrimaryContainer,
                        size: 30,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Perfil',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: LightColors().primary,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Row(
                    children: [
                      Icon(
                        Icons.logout_outlined,
                        color: ComumColors().error,
                        size: 30,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Sair',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: ComumColors().error,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 110),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Column(
                    children: [
                      Text(
                        'Copyright © right ',
                        style: TextStyle(
                            color: LightColors().primary,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Desenvolvido por Upon',
                        style: TextStyle(
                            color: LightColors().primary,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
