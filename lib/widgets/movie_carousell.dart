import 'package:flutmov/screen/detail_screen.dart';
import 'package:flutmov/theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MovieCarousellItem extends StatelessWidget {
  final String imageurl;
  final String title;
  final DateTime releaseDate;
  final double rating;

  const MovieCarousellItem({
    Key? key,
    required this.imageurl,
    required this.title,
    required this.releaseDate,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailScreen()),
        );
      },
      child: Container(
        margin: EdgeInsets.only(left: 24),
        width: 300,
        child: Column(
          children: [
            Container(
              width: 300.0,
              height: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21.0),
                image: DecorationImage(
                  image: AssetImage(imageurl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 26.0,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: blackTextStyle.copyWith(
                        fontSize: 20.0,
                        fontWeight: extraBold,
                      ),
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      DateFormat('MMM dd yyyy').format(releaseDate),
                      style: greyTextStyle.copyWith(fontSize: 16.0),
                    ),
                  ],
                ),
                Spacer(),
                Icon(
                  Icons.star,
                  color: rating >= 2 ? yellowColor : lightGreyColor,
                  size: 18.0,
                ),
                SizedBox(
                  width: 2.0,
                ),
                Icon(
                  Icons.star,
                  color: rating >= 4 ? yellowColor : lightGreyColor,
                  size: 18.0,
                ),
                SizedBox(
                  width: 2.0,
                ),
                Icon(
                  Icons.star,
                  color: rating >= 6 ? yellowColor : lightGreyColor,
                  size: 18.0,
                ),
                SizedBox(
                  width: 2.0,
                ),
                Icon(
                  Icons.star,
                  color: rating >= 8 ? yellowColor : lightGreyColor,
                  size: 18.0,
                ),
                SizedBox(
                  width: 2.0,
                ),
                Icon(
                  Icons.star,
                  color: rating >= 10 ? yellowColor : lightGreyColor,
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
