// Importing necessary packages and modules
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Importing the app colors
import '../../../../core/constants/app_colors.dart';
// Importing the reservations entity
import '../../domain/entities/reservations_entity.dart';

// Defining a stateless widget named TicketsWidget
class TicketsWidget extends StatelessWidget {
  // Declaring a final variable of type ReservationEntity named reservation
  final ReservationEntity reservation;

  // Defining a constructor for TicketsWidget
  // This constructor takes a required parameter named reservation
  const TicketsWidget({
    super.key,
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
        // A Text widget displaying 'Tickets:'
        Text(
          'Tickets:',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        // A SizedBox for spacing
        SizedBox(height: 8.h),
        // Mapping each user ticket in the reservation to a Padding widget
        ...reservation.userTickets.map(
              (ticket) => Padding(
            // Setting the padding of the Padding widget
            padding: EdgeInsets.symmetric(vertical: 4.0.h),
            // Defining the child of the Padding widget as a Container widget
            child: Container(
              // Setting the decoration of the Container widget
              decoration: BoxDecoration(
                // Setting the image of the DecorationImage
                image: DecorationImage(
                  // Setting the image of the DecorationImage widget to an AssetImage
                  image:
                  const AssetImage('assets/images/ticket_background.png'),
                  // Setting the fit of the DecorationImage widget to fill
                  fit: BoxFit.fill,
                  // Setting the colorFilter of the DecorationImage widget
                  colorFilter: ColorFilter.mode(
                      Theme.of(context).colorScheme.onSecondaryContainer,
                      BlendMode.srcIn),
                ),
              ),
              // Defining the child of the Container widget as a Padding widget
              child: Padding(
                // Setting the padding of the Padding widget
                padding: EdgeInsets.all(16.0.h),
                // Defining the child of the Padding widget as a Column widget
                child: Column(
                  // Aligning the children of the Column along the horizontal axis
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  // Defining the children of the Column
                  children: [
                    // A Row widget
                    Row(
                      // Defining the children of the Row
                      children: [
                        // A Container widget
                        Container(
                          // Setting the decoration of the Container widget
                          decoration: BoxDecoration(
                            // Setting the shape of the BoxDecoration to circle
                            shape: BoxShape.circle,
                            // Setting the border of the BoxDecoration
                            border:
                            Border.all(color: AppColors.white, width: 2),
                          ),
                          // Defining the child of the Container widget as a CircleAvatar widget
                          child: CircleAvatar(
                            // Setting the backgroundImage of the CircleAvatar widget to a NetworkImage
                            backgroundImage: NetworkImage(ticket.userAvatar),
                          ),
                        ),
                        // A SizedBox for spacing
                        SizedBox(width: 8.w),
                        // An Expanded widget
                        Expanded(
                          // Defining the child of the Expanded widget as a Column widget
                          child: Column(
                            // Aligning the children of the Column along the horizontal axis
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            // Defining the children of the Column
                            children: [
                              // A Text widget displaying the user name of the ticket
                              Text(
                                ticket.userName,
                                style:
                                Theme.of(context).textTheme.headlineMedium,
                              ),
                              // A Text widget displaying the ticket number
                              Text(
                                '#${ticket.ticketNumber}',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // A SizedBox for spacing
                    SizedBox(height: 16.h),
                    // A Padding widget
                    Padding(
                      // Setting the padding of the Padding widget
                      padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                      // Defining the child of the Padding widget as a DottedLine widget
                      child: const DottedLine(
                        // Setting the dashColor of the DottedLine widget to white
                        dashColor: AppColors.white,
                        // Setting the dashGapLength of the DottedLine widget to 4
                        dashGapLength: 4,
                        // Setting the dashLength of the DottedLine widget to 4
                        dashLength: 4,
                      ),
                    ),
                    // A SizedBox for spacing
                    SizedBox(height: 16.h),
                    // A Text widget displaying the ticket type
                    Text('Ticket Type: ${ticket.ticketType}'),
                    // A SizedBox for spacing
                    SizedBox(height: 5.h),
                    // A Text widget displaying the seat number
                    Text('Seat: ${ticket.seatNumber}'),
                    // A SizedBox for spacing
                    SizedBox(height: 16.h),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}