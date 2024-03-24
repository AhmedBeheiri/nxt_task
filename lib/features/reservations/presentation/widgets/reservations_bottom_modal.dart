// Importing necessary packages and modules
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nxt_task/features/reservations/presentation/manager/reservation_cubit.dart';

// Importing other widgets used in this file
import 'reservation_row.dart';

// Defining a stateless widget named ReservationsBottomModal
class ReservationsBottomModal extends StatelessWidget {
  // Defining a constructor for ReservationsBottomModal
  const ReservationsBottomModal({super.key});

  // Overriding the build method to return a widget tree
  @override
  Widget build(BuildContext context) {
    // Returning a BlocBuilder widget
    return BlocBuilder<ReservationCubit, ReservationState>(
      // Defining the builder function of the BlocBuilder widget
      builder: (context, state) {
        // Returning a SingleChildScrollView widget
        return SingleChildScrollView(
          // Defining the child of the SingleChildScrollView widget as a Column widget
          child: Column(
            // Aligning the children of the Column along the horizontal axis
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // Defining the children of the Column
            children: [
              // An Image widget displaying the first image of the first stay of the first reservation
              Image.network(state.reservations?.reservations
                  .expand((element) =>
                  element.stays.expand((element) => element.images))
                  .first ??
                  ''),
              // A SizedBox for spacing
              SizedBox(height: 16.h),
              // A Padding widget
              Padding(
                // Setting the padding of the Padding widget
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                // Defining the child of the Padding widget as a Column widget
                child: Column(
                  // Aligning the children of the Column along the horizontal axis
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  // Defining the children of the Column
                  children: [
                    // A Text widget displaying 'Hotel Check-in'
                    Text(
                      'Hotel Check-in',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    // A Text widget displaying 'Multiple Reservations'
                    Text(
                      'Multiple Reservations',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    // A SizedBox for spacing
                    SizedBox(height: 16.h),
                    // An if statement checking if there are any reservations
                    if (state.reservations != null &&
                        state.reservations!.reservations.isNotEmpty)
                    // A ListView.builder widget
                      ListView.builder(
                        // Defining the itemBuilder function of the ListView.builder widget
                        itemBuilder: (context, index) {
                          // Getting the reservation at the current index
                          final reservation =
                          state.reservations!.reservations[index];
                          // Returning a ReservationRow widget for the current reservation
                          return ReservationRow(reservation: reservation);
                        },
                        // Setting the itemCount of the ListView.builder widget to the number of reservations
                        itemCount:
                        state.reservations?.reservations.length ?? 0,
                        // Setting the shrinkWrap property of the ListView.builder widget to true
                        shrinkWrap: true,
                        // Setting the physics property of the ListView.builder widget to NeverScrollableScrollPhysics
                        physics: const NeverScrollableScrollPhysics(),
                      )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}