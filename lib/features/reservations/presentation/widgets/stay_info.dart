// Importing necessary packages and modules
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nxt_task/features/reservations/domain/entities/reservations_entity.dart';

// Defining a stateless widget named StayInfo
class StayInfo extends StatelessWidget {
  // Declaring a final variable of type StayEntity named stayEntity
  final StayEntity stayEntity;
  // Declaring a final variable of type ReservationEntity named reservation
  final ReservationEntity reservation;

  // Defining a constructor for StayInfo
  // This constructor takes two required parameters named stayEntity and reservation
  const StayInfo({
    super.key,
    required this.stayEntity,
    required this.reservation,
  });

  // Overriding the build method to return a widget tree
  @override
  Widget build(BuildContext context) {
    // Returning a Column widget
    return Column(
      // Aligning the children of the Column along the horizontal axis
      crossAxisAlignment: CrossAxisAlignment.stretch,
      // Defining the children of the Column
      children: [
        // A Row widget
        Row(
          // Defining the children of the Row
          children: [
            // An Expanded widget
            Expanded(
              // Defining the child of the Expanded widget as a Column widget
              child: Column(
                // Aligning the children of the Column along the horizontal axis
                crossAxisAlignment: CrossAxisAlignment.stretch,
                // Defining the children of the Column
                children: [
                  // A Text widget displaying 'From'
                  Text(
                    'From',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  // A Text widget displaying the start date of the reservation
                  Text(
                    reservation.from,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            // An Expanded widget
            Expanded(
              // Defining the child of the Expanded widget as a Column widget
              child: Column(
                // Aligning the children of the Column along the horizontal axis
                crossAxisAlignment: CrossAxisAlignment.stretch,
                // Defining the children of the Column
                children: [
                  // A Text widget displaying 'Till'
                  Text(
                    'Till',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  // A Text widget displaying the end date of the reservation
                  Text(
                    reservation.to,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
        // A SizedBox for spacing
        SizedBox(height: 16.h),
        // A Row widget
        Row(
          // Defining the children of the Row
          children: [
            // An Expanded widget
            Expanded(
              // Defining the child of the Expanded widget as a Column widget
              child: Column(
                // Aligning the children of the Column along the horizontal axis
                crossAxisAlignment: CrossAxisAlignment.stretch,
                // Defining the children of the Column
                children: [
                  // A Text widget displaying 'Stars'
                  Text(
                    'Stars',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  // A RatingBar.builder widget displaying the review score of the stay
                  RatingBar.builder(
                    // Setting the initial rating of the RatingBar.builder widget to the review score of the stay
                    initialRating: stayEntity.review.toDouble(),
                    // Setting the minimum rating of the RatingBar.builder widget to 0
                    minRating: 0,
                    // Setting the direction of the RatingBar.builder widget to horizontal
                    direction: Axis.horizontal,
                    // Setting the allowHalfRating property of the RatingBar.builder widget to false
                    allowHalfRating: false,
                    // Setting the itemCount of the RatingBar.builder widget to 5
                    itemCount: 5,
                    // Setting the glow property of the RatingBar.builder widget to false
                    glow: false,
                    // Setting the itemSize of the RatingBar.builder widget to 24.0
                    itemSize: 24.0,
                    // Defining the itemBuilder function of the RatingBar.builder widget
                    itemBuilder: (context, _) => const Icon(
                      // Setting the icon of the Icon widget to star
                      Icons.star,
                      // Setting the color of the Icon widget to amber
                      color: Colors.amber,
                    ),
                    // Defining the onRatingUpdate function of the RatingBar.builder widget
                    onRatingUpdate: (_) {},
                    // Setting the ignoreGestures property of the RatingBar.builder widget to true
                    ignoreGestures: true,
                  ),
                ],
              ),
            ),
            // An Expanded widget
            Expanded(
              // Defining the child of the Expanded widget as a Column widget
              child: Column(
                // Aligning the children of the Column along the horizontal axis
                crossAxisAlignment: CrossAxisAlignment.stretch,
                // Defining the children of the Column
                children: [
                  // A Text widget displaying 'Room Count'
                  Text(
                    'Room Count',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  // A Text widget displaying the room count of the stay
                  Text(
                    stayEntity.roomCount.toString(),
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}