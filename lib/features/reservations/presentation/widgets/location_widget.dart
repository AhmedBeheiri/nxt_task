// Importing necessary packages and modules
import 'package:darty_commons/ankos/strings_anko.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nxt_task/features/reservations/domain/entities/reservations_entity.dart';

// Defining a stateless widget named LocationWidget
class LocationWidget extends StatelessWidget {
  // Declaring a final variable of type StayEntity named stayEntity
  final StayEntity stayEntity;

  // Defining a constructor for LocationWidget
  // This constructor takes a required parameter named stayEntity
  const LocationWidget({
    super.key,
    required this.stayEntity,
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
        // A Text widget displaying 'Location'
        Text(
          'Location',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        // A SizedBox for spacing
        SizedBox(height: 8.h),
        // A Material widget
        Material(
          // Setting the color of the Material widget
          color: Theme.of(context).colorScheme.onSecondaryContainer,
          // Setting the elevation of the Material widget
          elevation: 4,
          // Defining the child of the Material widget as an InkWell widget
          child: InkWell(
            // Defining the onTap function of the InkWell widget
              onTap: () {
                // Opening the location of the stay in the maps app
                'maps://?q=${stayEntity.lat},${stayEntity.long}'.browse();
              },
              // Defining the child of the InkWell widget as a Row widget
              child: Row(
                // Defining the children of the Row
                children: [
                  // An Expanded widget
                  Expanded(
                    // Defining the child of the Expanded widget as a Padding widget
                    child: Padding(
                      // Setting the padding of the Padding widget
                      padding: EdgeInsets.all(16.0.h),
                      // Defining the child of the Padding widget as a Column widget
                      child: Column(
                        // Aligning the children of the Column along the horizontal axis
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        // Defining the children of the Column
                        children: [
                          // A Text widget displaying the hotel name of the stay
                          Text(
                            stayEntity.hotelName,
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          // A SizedBox for spacing
                          SizedBox(height: 8.h),
                          // A Text widget displaying the address of the stay
                          Text(
                            stayEntity.address,
                            style: Theme.of(context).textTheme.bodyLarge,
                            // Limiting the number of lines of the Text widget to 2
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ),
                  ),
                  // An Image widget displaying a Google Maps image
                  Image.asset(
                    // Setting the source of the Image widget
                    'assets/images/google_map.png',
                    // Setting the fit of the Image widget to cover
                    fit: BoxFit.cover,
                    // Setting the height of the Image widget
                    height: 120.h,
                  )
                ],
              )),
        )
      ],
    );
  }
}