import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Gridpart extends StatelessWidget {
  const Gridpart({super.key});

  @override
  Widget build(BuildContext context) {
    return  SliverGrid(
      delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.all(8.w), // Adjust margin using ScreenUtil
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbpdV5eKcBMzjs7ltDev4YxvWvnNxcFk7wUg&s$index', // Example image URL
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(15.r), // Adjust radius using ScreenUtil
            ),
          );
        },
        childCount: 12, // Number of grid items
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // 3 photos per row
        crossAxisSpacing: 2, // Adjust spacing using ScreenUtil
        mainAxisSpacing: 2.h,
        childAspectRatio: 1, // Square aspect ratio
      ),
    );
  }
}
