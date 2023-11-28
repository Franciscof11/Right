import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:right/application/presentation/widgets/remove_glow_effect.dart';
import 'package:right/utils/const_colors.dart';

class UserSupport extends StatelessWidget {
  const UserSupport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ComumColors().error,
      body: Column(
        children: [
          //header
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(44.0),
                child: Expanded(
                  //Logo
                  child: SvgPicture.asset('assets/logo_error.svg'),
                ),
              ),
              Expanded(
                  //Button home
                  child: Icon(
                Icons.home,
                size: 30,
                color: ComumColors().errorContainer,
              ))
            ],
          ),
          Expanded(
              child: RemoveGlowEffect(
                  child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(34),
                ),
                color: LightColors().onPrimary,
              ),
              padding:
                  const EdgeInsets.symmetric(horizontal: 32, vertical: 600),
            ),
          )))
        ],
      ),
    );
  }
}
