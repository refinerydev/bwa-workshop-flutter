import 'package:flutmov/theme.dart';
import 'package:flutmov/widgets/movie_carousell.dart';
import 'package:flutmov/widgets/movie_list_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  Widget header() {
    return Container(
      margin: EdgeInsets.only(top: 33),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Home',
                style: blackTextStyle.copyWith(
                  fontSize: 28.0,
                  fontWeight: black,
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                'Watch much easier',
                style: greyTextStyle.copyWith(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
          Container(
            width: 55.0,
            height: 45.0,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(259.0),
              ),
            ),
            child: Center(
              child: Image.asset(
                'assets/icon_search.png',
                width: 22,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(
            left: 24.0,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      MovieCarousellItem(
                        imageurl: 'assets/image_cover1.png',
                        title: 'Jhn Wick 4',
                        releaseDate: DateTime(2020, 5, 1),
                        rating: 0,
                      ),
                      MovieCarousellItem(
                        imageurl: 'assets/image_cover1.png',
                        title: 'Jhn Wick 4',
                        releaseDate: DateTime(2020, 5, 1),
                        rating: 10,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 30,
                  ),
                  child: Text(
                    'From Disney',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: black,
                    ),
                  ),
                ),
                Column(
                  children: [
                    MovieListItem(
                      imageurl: 'assets/image_cover3.png',
                      title: 'Mulan Session',
                      releaseDate: DateTime(2021, 7, 17),
                      rating: 10,
                    ),
                    MovieListItem(
                      imageurl: 'assets/image_cover4.png',
                      title: 'Beauty & The Beast',
                      releaseDate: DateTime(2021, 7, 17),
                      rating: 10,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
