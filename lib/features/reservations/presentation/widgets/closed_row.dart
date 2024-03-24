// Importing necessary packages and modules
import 'package:avatar_stack/avatar_stack.dart';
import 'package:avatar_stack/positions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nxt_task/features/reservations/domain/entities/reservations_entity.dart';

// Defining a stateless widget named ClosedRow
class ClosedRow extends StatelessWidget {
  // Declaring a final variable of type StayEntity named stayEntity
  final StayEntity stayEntity;

  // Defining a constructor for ClosedRow
  // This constructor takes a required parameter named stayEntity
  const ClosedRow({super.key,required this.stayEntity});

  // Overriding the build method to return a widget tree
  @override
  Widget build(BuildContext context) {
    // Returning an Expanded widget
    return Expanded(
      // Defining the child of the Expanded widget as a Padding widget
      child: Padding(
        // Setting the padding of the Padding widget
        padding: EdgeInsets.symmetric(
            vertical: 8.0.h, horizontal: 16.w),
        // Defining the child of the Padding widget as a Row widget
        child: Row(
          // Defining the children of the Row widget
          children: [
            // An Expanded widget containing a Text widget
            Expanded(
                child: Text(
                  // Displaying the hotelName of the stayEntity
                  stayEntity.hotelName,
                  // Setting the style of the Text widget
                  style: Theme.of(context).textTheme.headlineMedium,
                )),
            // An AvatarStack widget
            AvatarStack(
              // Setting the positions of the avatars in the AvatarStack
              settings: RestrictedAmountPositions(
                  align: StackAlign.right),
              // Setting the width of the AvatarStack
              width: 60.w,
              // Setting the height of the AvatarStack
              height: 30.h,
              // Defining the avatars of the AvatarStack
              avatars: stayEntity.guests
              // Mapping each guest to their avatar
                  .map((element) => NetworkImage(element.avatar))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}