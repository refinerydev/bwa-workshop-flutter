import 'package:flutmov/theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MovieListItem extends StatelessWidget {
  final String imageurl;
  final String title;
  final DateTime releaseDate;
  final double rating;

  const MovieListItem({
    Key? key,
    required this.imageurl,
    required this.title,
    required this.releaseDate,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16),
      width: double.infinity,
      height: 127,
      child: Row(
        children: [
          Container(
            width: 100,
            height: 127,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21.0),
              image: DecorationImage(
                image: AssetImage(imageurl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: bold,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                DateFormat('MMM dd yyyy').format(releaseDate),
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
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
        ],
      ),
    );
  }
}
