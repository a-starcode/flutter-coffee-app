import 'package:coffee_shop/global/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBox extends StatefulWidget {
  final TextEditingController? controller;

  const SearchBox({Key? key, this.controller}) : super(key: key);

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      maxLines: 1,
      style: MyTextStyle.regularGrey.copyWith(fontSize: 11.0),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(999.0),
        ),
        suffixIcon: IconButton(
          onPressed: () {
            // search function here
          },
          icon: Container(
            padding: const EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(999.0),
              color: MyColors.primaryColor,
            ),
            child: SvgPicture.asset(
              "assets/svgs/i_location_filled.svg",
              height: 20.0,
              color: MyColors.white,
            ),
          ),
        ),
        prefixIcon: IconButton(
          onPressed: () {
            // search function here
          },
          icon: SvgPicture.asset(
            "assets/svgs/i_search.svg",
            height: 20.0,
            color: MyColors.white,
          ),
        ),
        hintText: "Search for Coffee",
        hintStyle: MyTextStyle.regularGrey,
        fillColor: MyColors.white.withOpacity(0.03),
        filled: true,
      ),
    );
  }
}
