import 'package:flutmov/service/movie_service.dart';
import 'package:flutmov/theme.dart';
import 'package:flutmov/widgets/movie_carousell.dart';
import 'package:flutmov/widgets/movie_list_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MoviesService().getNowMovies();

    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 33,
                  left: 24,
                  bottom: 30,
                ),
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
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    MovieCarousellItem(
                      imageurl: 'assets/image_cover1.png',
                      title: 'Jhon Wick 4',
                      releaseDate: DateTime(2020, 5, 1),
                      rating: 10,
                    ),
                    MovieCarousellItem(
                      imageurl: 'assets/image_cover2.png',
                      title: 'Bohemian',
                      releaseDate: DateTime(2020, 5, 1),
                      rating: 8,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.only(left: 24),
                child: Text(
                  'From Disney',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: black,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
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
        ),
      ),
    );
  }
}
