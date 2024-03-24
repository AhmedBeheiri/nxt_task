// Importing necessary packages and modules
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nxt_task/features/reservations/domain/entities/reservations_entity.dart';

// Defining a stateless widget named GalleryWidget
class GalleryWidget extends StatelessWidget {
  // Declaring a final variable of type StayEntity named stayEntity
  final StayEntity stayEntity;

  // Defining a constructor for GalleryWidget
  // This constructor takes a required parameter named stayEntity
  const GalleryWidget({super.key,required this.stayEntity});

  // Overriding the build method to return a widget tree
  @override
  Widget build(BuildContext context) {
    // Returning a Column widget
    return Column(
      // Aligning the children of the Column along the horizontal axis
      crossAxisAlignment: CrossAxisAlignment.stretch,
      // Defining the children of the Column
      children: [
        // A Text widget displaying 'Gallery:'
        Text(
          'Gallery:',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        // A SizedBox for spacing
        SizedBox(height: 8.h),
        // A SizedBox containing a ListView
        SizedBox(
          height: 225.h,
          child: ListView(
            // Setting the scroll direction of the ListView to horizontal
            scrollDirection: Axis.horizontal,
            // Defining the children of the ListView
            children: stayEntity.images
            // Mapping each image URL to a Padding widget containing an Image widget
                .map(
                  (url) => Padding(
                // Setting the padding of the Padding widget
                padding: EdgeInsets.symmetric(horizontal: 3.0.w),
                // Defining the child of the Padding widget as an Image widget
                child: Image.network(
                  // Setting the source of the Image widget to the image URL
                  url,
                  // Setting the fit of the Image widget to cover
                  fit: BoxFit.cover,
                  // Setting the width of the Image widget
                  width: 150.w,
                ),
              ),
            )
            // Converting the mapped items to a list
                .toList(),
          ),
        ),
      ],
    );
  }
}