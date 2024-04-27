import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xff97ABFF),
              Color(0xff123597),
            ],
          ),
        ),
        child: SafeArea(
            child: Column(
          children: [
            SizedBox(
              height: 2.5.h,
            ),
            Text(
              'Dhaka',
              style: GoogleFonts.inter(
                color: Color(0xffFFFFFF),
                fontSize: 22.sp,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 1.5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on,
                  size: 2.5.h,
                  color: Color(0xffFFFFFF),
                ),
                Text(
                  'Current Location',
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 12.sp,
                    fontFamily: 'Circular Std',
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
            SizedBox(
              height: 3.5.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.0.h),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/png/partlyc.png',
                  ),
                  SizedBox(
                    width: 1.5.w,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '13',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 100.sp,
                            fontFamily: 'Circular Std',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: 'o',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 50.sp,
                            fontFamily: 'Circular Std',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
