import 'package:flutmov/bloc/home/home_bloc.dart';
import 'package:flutmov/theme.dart';
import 'package:flutmov/widgets/movie_carousell.dart';
import 'package:flutmov/widgets/movie_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state is HomeLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state is HomeSuccess) {
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 29,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 24,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Home',
                              style: blackTextStyle.copyWith(
                                fontSize: 28,
                                fontWeight: black,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Watch much easier',
                              style: greyTextStyle.copyWith(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                          width: 55,
                          height: 45,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(259),
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
                    SizedBox(
                      height: 30,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: state.data
                            .map((e) => MovieCarousellItem(movie: e))
                            .toList(),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 30,
                        left: 24,
                        bottom: 20,
                      ),
                      child: Text(
                        'Upcoming',
                        style: blackTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: black,
                        ),
                      ),
                    ),
                    BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
                      if (state is HomeLoading) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }

                      if (state is HomeSuccess) {
                        return Column(
                          children: state.data
                              .map((e) => MovieListItem(movie: e))
                              .toList(),
                        );
                      }
                      return Center(
                        child: Text('Data Tidak Bisa Dimuat'),
                      );
                    }
                        // MovieListItem(
                        //   imageUrl: 'assets/image_detail1.png',
                        //   title: 'Mulan Session',
                        //   rating: 6,
                        //   releaseDate: DateTime(2021, 6, 17),
                        // ),
                        ),
                  ],
                ),
              ),
            );
          }

          return Center(
            child: Text('Data Tidak Bisa Dimuat'),
          );
        },
      ),
    );
  }
}
