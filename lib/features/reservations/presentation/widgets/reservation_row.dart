// Importing necessary packages and modules
import 'package:expandable_widgets/expandable_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nxt_task/features/reservations/domain/entities/reservations_entity.dart';

// Importing other widgets used in this file
import 'closed_row.dart';
import 'expanded_row.dart';

// Defining a stateful widget named ReservationRow
class ReservationRow extends StatefulWidget {
  // Declaring a final variable of type ReservationEntity named reservation
  final ReservationEntity reservation;

  // Defining a constructor for ReservationRow
  // This constructor takes a required parameter named reservation
  const ReservationRow({super.key, required this.reservation});

  // Overriding the createState method to return a new instance of ReservationRowState
  @override
  ReservationRowState createState() => ReservationRowState();
}

// Defining a state class for ReservationRow named ReservationRowState
class ReservationRowState extends State<ReservationRow> {
  // Overriding the build method to return a widget tree
  @override
  Widget build(BuildContext context) {
    // Returning a Column widget
    return Column(
      // Defining the children of the Column
      children: widget.reservation.stays
      // Mapping each stay to a Padding widget containing an Expandable widget
          .map(
            (e) => Padding(
          // Setting the padding of the Padding widget
          padding: EdgeInsets.symmetric(vertical: 8.0.h),
          // Defining the child of the Padding widget as an Expandable widget
          child: Expandable(
            // Setting the background color of the Expandable widget
            backgroundColor: Theme.of(context).colorScheme.onSurface,
            // Defining the first child of the Expandable widget as a ClosedRow widget
            firstChild: ClosedRow(stayEntity: e),
            // Defining the second child of the Expandable widget as an ExpandedRow widget
            secondChild: ExpandedRow(
              stayEntity: e,
              reservation: widget.reservation,
            ),
            // Setting the showArrowWidget property of the Expandable widget to true
            showArrowWidget: true,
            // Setting the arrowLocation property of the Expandable widget to left
            arrowLocation: ArrowLocation.left,
            // Defining the arrowWidget of the Expandable widget as a Padding widget containing an Icon widget
            arrowWidget: Padding(
              // Setting the padding of the Padding widget
              padding: EdgeInsets.symmetric(horizontal: 8.0.w),
              // Defining the child of the Padding widget as an Icon widget
              child: const Icon(
                // Setting the icon of the Icon widget to keyboard_arrow_up_rounded
                Icons.keyboard_arrow_up_rounded,
                // Setting the size of the Icon widget to 40
                size: 40,
              ),
            ),
          ),
        ),
      )
      // Converting the mapped items to a list
          .toList(),
    );
  }
}