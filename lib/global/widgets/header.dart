import 'package:coffee_shop/global/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          "assets/svgs/i_hamburger_menu.svg",
          height: 23.0,
          color: Colors.white.withOpacity(0.95),
        ),

        // starbucks logo
        Row(
          children: [
            SvgPicture.asset(
              "assets/svgs/i_starbucks_logo.svg",
              height: 36.0,
            ),
            const SizedBox(width: 8.0),
            Text(
              "STARBUCKS",
              style: MyTextStyle.logoWhite.copyWith(fontSize: 16.0),
            ),
          ],
        ),

        // profile icon
        ClipRRect(
          borderRadius: BorderRadius.circular(999.0),
          child: Image.asset(
            "assets/images/mike.jpg",
            height: 36.0,
          ),
        ),
      ],
    );
  }
}
