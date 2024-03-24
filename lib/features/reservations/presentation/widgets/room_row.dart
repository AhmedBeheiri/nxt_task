
// Importing necessary packages and modules
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nxt_task/features/reservations/domain/entities/reservations_entity.dart';

import '../../../../core/constants/app_colors.dart';
import 'guest_row.dart';

// Defining a StatelessWidget named RoomRow
class RoomRow extends StatelessWidget {
  // Declaring a final variable of type RoomEntity
  final RoomEntity room;

  // Defining a constructor for this widget
  const RoomRow({super.key,required this.room});

  // Overriding the build method to describe the part of the user interface represented by this widget
  @override
  Widget build(BuildContext context) {
    // Returning a Column widget that contains a list of widgets
    return Column(
      // Aligning the children along the horizontal axis
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Adding a dotted line
        const DottedLine(
          dashColor: AppColors.grey,
          dashGapLength: 4,
          dashLength: 4,
        ),
        // Adding a vertical space
        SizedBox(height: 16.h),
        // Adding a text widget
        Text(
          'Room ${room.roomName}',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        // Adding a vertical space
        SizedBox(height: 16.h),
        // Adding a text widget
        Text(
          'Guest(s):',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        // Adding a vertical space
        SizedBox(height: 8.h),
        // Mapping each guest in the room to a GuestRow widget
        ...room.guests.map(
              (e) => GuestRow(guest: e),
        ),
        // Adding a vertical space
        SizedBox(height: 16.h),
        // Adding a text widget
        Text(
          'Room Type',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        // Adding a text widget
        Text(room.roomType),
        // Adding a vertical space
        SizedBox(height: 16.h),
        // Creating a Row widget to place children in a horizontal array
        Row(
          children: [
            // Expanding the Column widget to fill the remaining space
            Expanded(
              child: Column(
                // Aligning the children along the horizontal axis
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Adding a text widget
                  Text(
                    'Room Number',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  // Adding a text widget
                  Text(
                    room.roomNumber,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            // Expanding the Column widget to fill the remaining space
            Expanded(
              child: Column(
                // Aligning the children along the horizontal axis
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Adding a text widget
                  Text(
                    'Sleeps',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  // Adding a text widget
                  Text(
                    room.sleeps,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
        // Adding a vertical space
        SizedBox(height: 24.h),
        // Adding a dotted line
        const DottedLine(
          dashColor: AppColors.grey,
          dashGapLength: 4,
          dashLength: 4,
        ),
        // Adding a vertical space
        SizedBox(height: 24.h),
      ],
    );
  }
}