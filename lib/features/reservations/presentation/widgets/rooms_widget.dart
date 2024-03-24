// Importing necessary packages and modules
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nxt_task/features/reservations/domain/entities/reservations_entity.dart';
import 'package:nxt_task/features/reservations/presentation/widgets/room_row.dart';

// Defining a stateless widget named RoomsWidget
class RoomsWidget extends StatelessWidget {
  // Declaring a final variable of type StayEntity named stayEntity
  final StayEntity stayEntity;

  // Defining a constructor for RoomsWidget
  // This constructor takes a required parameter named stayEntity
  const RoomsWidget({super.key, required this.stayEntity});

  // Overriding the build method to return a widget tree
  @override
  Widget build(BuildContext context) {
    // Returning a Column widget
    return Column(
      // Aligning the children of the Column along the horizontal axis
      crossAxisAlignment: CrossAxisAlignment.stretch,
      // Defining the children of the Column
      children: [
        // A SizedBox for spacing
        SizedBox(height: 16.h),
        // Mapping each room in the stay to a RoomRow widget
        ...stayEntity.rooms.map(
              (room) => RoomRow(room: room),
        ),
      ],
    );
  }
}