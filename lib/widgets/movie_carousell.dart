import 'package:flutmov/model/movie_model.dart';
import 'package:flutmov/screen/detail_screen.dart';
import 'package:flutmov/theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MovieCarousellItem extends StatelessWidget {
  final MovieModel movie;

  const MovieCarousellItem({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              movie: movie,
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(left: 24, right: 24),
        width: 300,
        child: Column(
          children: [
            Container(
              width: 300.0,
              height: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21.0),
                image: DecorationImage(
                  image: NetworkImage(movie.posterPath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 26.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        movie.title,
                        style: blackTextStyle.copyWith(
                          fontSize: 20.0,
                          fontWeight: extraBold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        DateFormat('MMM dd yyyy').format(movie.releaseDate),
                        style: greyTextStyle.copyWith(fontSize: 16.0),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.star,
                  color: movie.voteAverage >= 2 ? yellowColor : greyColor,
                  size: 18.0,
                ),
                SizedBox(
                  width: 2.0,
                ),
                Icon(
                  Icons.star,
                  color: movie.voteAverage >= 4 ? yellowColor : greyColor,
                  size: 18.0,
                ),
                SizedBox(
                  width: 2.0,
                ),
                Icon(
                  Icons.star,
                  color: movie.voteAverage >= 6 ? yellowColor : greyColor,
                  size: 18.0,
                ),
                SizedBox(
                  width: 2.0,
                ),
                Icon(
                  Icons.star,
                  color: movie.voteAverage >= 8 ? yellowColor : greyColor,
                  size: 18.0,
                ),
                SizedBox(
                  width: 2.0,
                ),
                Icon(
                  Icons.star,
                  color: movie.voteAverage >= 10 ? yellowColor : greyColor,
                  size: 18.0,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
