// ignore_for_file: deprecated_member_use, unused_local_variable, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:right/features/auth/application/presentation/widgets/card_collection.dart';
import 'package:right/features/auth/application/presentation/widgets/drawer_home.dart';
import 'package:right/utils/const_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> CollectionNames = [
    'Raciocínio Lógico',
    'Inglês Básico',
    'Francês',
    'TypeScript',
    'Java',
    'Ruby on Rails',
    'JavaScript'
  ];
  bool darkMode = false;
  bool boxValue = false;

  @override
  Widget build(BuildContext context) {
    double widthDisp = MediaQuery.of(context).size.width;

    double heightDisp = MediaQuery.of(context).size.height;
    Color primaryTextColors =
        darkMode == true ? Colors.white : LightColors().primary;
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      drawer: const DrawerHome(),
      drawerEnableOpenDragGesture: false,
      key: scaffoldKey,
      backgroundColor: darkMode == true ? DarkColors().onPrimary : Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            //
            //App Bar
            //
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      scaffoldKey.currentState?.openDrawer();
                    },
                    child: SvgPicture.asset(
                      'assets/icons/icon_drawer.svg',
                      width: 30,
                      height: 30,
                      color: darkMode == true ? Colors.white : Colors.black,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text.rich(
                    TextSpan(
                        text: 'Olá, ',
                        style: GoogleFonts.inter(
                          color: darkMode == true
                              ? DarkColors().primary
                              : DarkColors().onPrimary,
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                        ),
                        children: [
                          TextSpan(
                            text: 'CardBoy!',
                            style: GoogleFonts.inter(
                              color: darkMode == true
                                  ? DarkColors().onPrimaryContainer
                                  : DarkColors().surfaceVariant,
                              fontSize: 26,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ]),
                  ),
                  SizedBox(width: widthDisp * 0.2),
                  GestureDetector(
                    child: Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        color: LightColors().primaryContainer,
                        shape: BoxShape.circle,
                      ),
                      padding: const EdgeInsets.all(0),
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
                              spreadRadius: 3,
                              blurRadius: 8,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            //
            //Title
            //
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    'Meus Cartões',
                    style: GoogleFonts.inter(
                      color: darkMode == true
                          ? DarkColors().primary
                          : LightColors().primary,
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(width: widthDisp * 0.16),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.filter_list,
                        color: Colors.grey.shade600,
                        size: 30,
                      ))
                ],
              ),
            ),

            //
            //Collections
            //
            const SizedBox(height: 5),
            SizedBox(
              width: widthDisp,
              height: heightDisp * 0.682,
              child: RefreshIndicator(
                onRefresh: () async {
                  // Replace this delay with the code to be executed during refresh
                  // and return a Future when code finishs execution.
                  return Future<void>.delayed(const Duration(seconds: 1));
                },
                child: AnimationLimiter(
                  child: ListView.builder(
                    itemCount: CollectionNames.length,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return AnimationConfiguration.staggeredList(
                        position: index,
                        delay: const Duration(milliseconds: 100),
                        child: SlideAnimation(
                          duration: const Duration(milliseconds: 2500),
                          curve: Curves.fastLinearToSlowEaseIn,
                          horizontalOffset: 30,
                          verticalOffset: 300.0,
                          child: FlipAnimation(
                            duration: const Duration(milliseconds: 3000),
                            curve: Curves.fastLinearToSlowEaseIn,
                            flipAxis: FlipAxis.y,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: CardCollection(
                                  collectionName: CollectionNames[index]),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
