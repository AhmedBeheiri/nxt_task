// Importing necessary packages and modules
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nxt_task/features/reservations/domain/entities/reservations_entity.dart';

// Defining a stateless widget named GuestRow
class GuestRow extends StatelessWidget {
  // Declaring a final variable of type GuestEntity named guest
  final GuestEntity guest;

  // Defining a constructor for GuestRow
  // This constructor takes a required parameter named guest
  const GuestRow({super.key,required this.guest});

  // Overriding the build method to return a widget tree
  @override
  Widget build(BuildContext context) {
    // Returning a Row widget
    return Row(
      // Defining the children of the Row
      children: [
        // A CircleAvatar widget displaying the guest's avatar
        CircleAvatar(
          // Setting the background image of the CircleAvatar to the guest's avatar
          backgroundImage: NetworkImage(guest.avatar),
        ),
        // A SizedBox for spacing
        SizedBox(width: 8.w),
        // A Text widget displaying the guest's name
        Text(guest.name),
      ],
    );
  }
}