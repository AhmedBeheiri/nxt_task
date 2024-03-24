// Importing necessary packages and modules
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Importing the reservations entity
import '../../domain/entities/reservations_entity.dart';
// Importing the GuestRow widget
import 'guest_row.dart';

// Defining a stateless widget named StayGuestsWidget
class StayGuestsWidget extends StatelessWidget {
  // Declaring a final variable of type StayEntity named stayEntity
  final StayEntity stayEntity;

  // Defining a constructor for StayGuestsWidget
  // This constructor takes a required parameter named stayEntity
  const StayGuestsWidget({super.key, required this.stayEntity});

  // Overriding the build method to return a widget tree
  @override
  Widget build(BuildContext context) {
    // Returning a Column widget
    return Column(
      // Aligning the children of the Column along the horizontal axis
      crossAxisAlignment: CrossAxisAlignment.stretch,
      // Defining the children of the Column
      children: [
        // A Text widget displaying 'Guests:'
        Text(
          'Guests:',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        // A SizedBox for spacing
        SizedBox(height: 8.h),
        // Mapping each guest in the stay to a GuestRow widget
        ...stayEntity.guests.map(
              (e) => GuestRow(guest: e),
        ),
      ],
    );
  }
}