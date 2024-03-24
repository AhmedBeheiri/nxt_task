// Importing necessary packages and modules
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nxt_task/features/reservations/presentation/widgets/gallary_widget.dart';
import 'package:nxt_task/features/reservations/presentation/widgets/rooms_widget.dart';
import 'package:nxt_task/features/reservations/presentation/widgets/stay_guests_widget.dart';
import 'package:nxt_task/features/reservations/presentation/widgets/stay_info.dart';
import 'package:nxt_task/features/reservations/presentation/widgets/tickets_widget.dart';

// Importing the domain entities
import '../../domain/entities/reservations_entity.dart';

// Importing other widgets used in this file
import 'amenities_widget.dart';
import 'location_widget.dart';

// Defining a stateless widget named ExpandedRow
class ExpandedRow extends StatelessWidget {
  // Declaring final variables of type StayEntity and ReservationEntity
  final StayEntity stayEntity;
  final ReservationEntity reservation;

  // Defining a constructor for ExpandedRow
  // This constructor takes required parameters named stayEntity and reservation
  const ExpandedRow({
    super.key,
    required this.stayEntity,
    required this.reservation,
  });

  // Overriding the build method to return a widget tree
  @override
  Widget build(BuildContext context) {
    // Returning a Padding widget
    return Padding(
      // Setting the padding of the Padding widget
      padding: EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 16.w),
      // Defining the child of the Padding widget as a Column widget
      child: Column(
        // Aligning the children of the Column along the horizontal axis
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // Defining the children of the Column
        children: [
          // A StayGuestsWidget displaying the guests of the stay
          StayGuestsWidget(
            stayEntity: stayEntity,
          ),
          // A SizedBox for spacing
          SizedBox(height: 16.h),
          // A StayInfo widget displaying the information of the stay and reservation
          StayInfo(
            stayEntity: stayEntity,
            reservation: reservation,
          ),
          // A SizedBox for spacing
          SizedBox(height: 16.h),
          // A LocationWidget displaying the location of the stay
          LocationWidget(
            stayEntity: stayEntity,
          ),
          // A SizedBox for spacing
          SizedBox(height: 16.h),
          // A TicketsWidget displaying the tickets of the reservation
          TicketsWidget(
            reservation: reservation,
          ),
          // A RoomsWidget displaying the rooms of the stay
          RoomsWidget(
            stayEntity: stayEntity,
          ),
          // A GalleryWidget displaying the gallery of the stay
          GalleryWidget(
            stayEntity: stayEntity,
          ),
          // A SizedBox for spacing
          SizedBox(height: 16.h),
          // An AmenitiesWidget displaying the amenities of the stay
          AmenitiesWidget(
            amenities: stayEntity.amenities,
          ),
          // A SizedBox for spacing
          SizedBox(height: 16.h),
        ],
      ),
    );
  }
}