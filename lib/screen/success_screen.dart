import 'package:flutmov/theme.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 110,
                ),
                Image.asset(
                  'assets/image_success.png',
                  width: 367,
                  height: 327,
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  'Payment Success',
                  style: whiteTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Yes! time to relax yourself by\nwatching the good movie',
                  textAlign: TextAlign.center,
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                    height: 1.6,
                  ),
                ),
                SizedBox(
                  height: 40,
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
                        primary: whiteColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(37),
                        ),
                      ),
                      onPressed: () {
                        
                      },
                      child: Text(
                        'Back To Home',
                        style: blackTextStyle.copyWith(
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
        ),
      ),
    );
  }
}
