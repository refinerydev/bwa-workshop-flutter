import 'package:flutmov/screen/success_screen.dart';
import 'package:flutmov/theme.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24),
          children: [
            SizedBox(
              height: 39,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(7),
                  child: Icon(Icons.chevron_left),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(7),
                  child: Icon(Icons.favorite),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 23,
            ),
            Row(
              children: [
                Container(
                  width: 100,
                  height: 127,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(21.0),
                    image: DecorationImage(
                      image: AssetImage('assets/image_detail1.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'The Dark II',
                      style: blackTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: bold,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Sep 11, 2021',
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
                          color: 10 >= 2 ? yellowColor : lightGreyColor,
                          size: 18.0,
                        ),
                        SizedBox(
                          width: 2.0,
                        ),
                        Icon(
                          Icons.star,
                          color: 10 >= 4 ? yellowColor : lightGreyColor,
                          size: 18.0,
                        ),
                        SizedBox(
                          width: 2.0,
                        ),
                        Icon(
                          Icons.star,
                          color: 10 >= 6 ? yellowColor : lightGreyColor,
                          size: 18.0,
                        ),
                        SizedBox(
                          width: 2.0,
                        ),
                        Icon(
                          Icons.star,
                          color: 10 >= 8 ? yellowColor : lightGreyColor,
                          size: 18.0,
                        ),
                        SizedBox(
                          width: 2.0,
                        ),
                        Icon(
                          Icons.star,
                          color: 10 >= 10 ? yellowColor : lightGreyColor,
                          size: 18.0,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          '13 K',
                          style: blackTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: bold,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          'people',
                          style: blackTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: light,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      '1h 30m',
                      style: blackTextStyle,
                    ),
                    Text(
                      'Dolby Production',
                      style: greyTextStyle,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 42,
            ),
            Text(
              'Movie Synopis',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'The Dark is a 2018 Austrian horror film written and directed by Justin P. Lange and starring Nadia Alexander, Toby Nichols, and Karl Markovics.\n\ntrying to succeed as something both metaphorical and very literal-minded, the movie ends up being neither one.',
              style: greyTextStyle.copyWith(
                fontSize: 16,
                height: 1.6,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Gallery',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: bold,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: DecorationImage(
                      image: AssetImage('assets/image_detail2.png'),
                    ),
                  ),
                ),
                Container(
                  height: 80,
                  width: 80,
                  margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: DecorationImage(
                      image: AssetImage('assets/image_detail3.png'),
                    ),
                  ),
                ),
                Container(
                  height: 80,
                  width: 80,
                  margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: DecorationImage(
                      image: AssetImage('assets/image_detail4.png'),
                    ),
                  ),
                )
              ],
            ),
            Align(
              child: Container(
                width: 220,
                height: 50,
                margin: EdgeInsets.only(
                  top: 41,
                  bottom: 47,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: blackColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(37),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SuccessScreen()),
                    );
                  },
                  child: Text(
                    'Buy Ticket',
                    style: whiteTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: bold,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
