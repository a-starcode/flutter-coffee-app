import 'package:coffee_shop/global/themes.dart';
import 'package:coffee_shop/global/widgets/header.dart';
import 'package:coffee_shop/global/widgets/search_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background,
      body: HomeLayout(
        children: [
          const Header(),
          const SizedBox(height: 36.0),
          MorningMessageAndSearchBox(controller: _searchController),
          const SizedBox(height: 36.0),
          // categories
          Column(
            children: [
              // top half
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: MyTextStyle.boldWhite.copyWith(fontSize: 15.0),
                  ),
                  Row(
                    children: [
                      Text(
                        "View All",
                        style: MyTextStyle.regularGrey.copyWith(fontSize: 11.0),
                      ),
                      const SizedBox(width: 5.0),
                      SvgPicture.asset(
                        "assets/svgs/i_right_arrow.svg",
                        height: 16.0,
                        color: MyColors.grey,
                      ),
                    ],
                  ),
                ],
              ),
              // bottom half
              SizedBox(
                // limits the height of the scrollable list
                height: 100.0,
                child: Expanded(
                  // makes list take up all available space
                  flex: 1,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    separatorBuilder: (context, index) {
                      return const SizedBox(width: 5.0);
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return const CoffeeCard();
                    },
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class CoffeeCard extends StatelessWidget {
  const CoffeeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.primaryColor,
      width: 100.0,
      height: 120.0,
    );
  }
}

// adds border padding and a placeholder Column for
// all  content that's on the HomePage
class HomeLayout extends StatelessWidget {
  final List<Widget> children;
  const HomeLayout({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 36.0,
          right: 36.0,
          top: 24.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: children,
        ),
      ),
    );
  }
}

// top half of the homepage with the morning message
// and search box
class MorningMessageAndSearchBox extends StatelessWidget {
  final TextEditingController controller;
  const MorningMessageAndSearchBox({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Text(
            "Morning, Mike",
            style: MyTextStyle.boldWhite.copyWith(fontSize: 18.0),
            textAlign: TextAlign.start,
          ),
        ),
        const SizedBox(height: 16.0),
        SearchBox(controller: controller),
      ],
    );
  }
}
