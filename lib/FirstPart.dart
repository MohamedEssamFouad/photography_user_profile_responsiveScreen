import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Firstpart extends StatelessWidget {
  const Firstpart({super.key});

  @override
  Widget build(BuildContext context) {
    return    Column(
      children: [
        Container(
          height: 0.2.sh, // Adjust height using ScreenUtil
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(60.r), // Adjust radius using ScreenUtil
              bottomRight: Radius.circular(60.r),
            ),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                'https://www.bsr.org/images/heroes/bsr-focus-nature-hero.jpg',
              ),
            ),
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 24.sp, // Adjust icon size using ScreenUtil
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.message,
                        color: Colors.white,
                        size: 24.sp, // Adjust icon size using ScreenUtil
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 0.2.sh - 50.h, // Adjust position using ScreenUtil
                left: 0,
                right: 0,
                child: Center(
                  child: ClipOval(
                    child: Container(
                      width: 80.w, // Adjust width using ScreenUtil
                      height: 80.h, // Adjust height using ScreenUtil
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/User-avatar.svg/2048px-User-avatar.svg.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 50.h), // Add spacing between the image and the text
        Text(
          'Sarah Mrlyin',
          style: TextStyle(
            fontSize: 24.sp, // Adjust text size using ScreenUtil
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Photographer',
          style: TextStyle(
            fontSize: 15.sp,
            color: Colors.grey, // Adjust text size using ScreenUtil
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 25.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(
                  '68',
                  style: TextStyle(
                    fontSize: 24.sp, // Adjust text size using ScreenUtil
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Shots',
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: Colors.grey, // Adjust text size using ScreenUtil
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  '1.2K',
                  style: TextStyle(
                    fontSize: 24.sp, // Adjust text size using ScreenUtil
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Followers',
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: Colors.grey, // Adjust text size using ScreenUtil
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  '90',
                  style: TextStyle(
                    fontSize: 24.sp, // Adjust text size using ScreenUtil
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Following',
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: Colors.grey, // Adjust text size using ScreenUtil
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 25.h),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Container(
            alignment: Alignment.center,
            height: 60.h,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.r),
              color: Colors.indigo,
            ),
            child: Text(
              'Follow',
              style: TextStyle(
                fontSize: 15.sp,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(height: 25.h),
      ],
    );
  }
}
