import 'package:flutter/material.dart';
import 'package:right/utils/const_colors.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      decoration: BoxDecoration(
          color: LightColors().primary,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            child: const Icon(
              Icons.home_rounded,
              color: Colors.white,
              size: 28,
            ),
          ),
          const SizedBox(width: 70),
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.donut_large,
              color: Colors.white,
              size: 28,
            ),
          ),
          const SizedBox(width: 70),
          GestureDetector(
            onDoubleTap: () {},
            child: const Icon(
              Icons.forum_outlined,
              color: Colors.white,
              size: 28,
            ),
          ),
          const SizedBox(width: 70),
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.person_outline_outlined,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
