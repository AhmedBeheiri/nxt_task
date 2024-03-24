// Importing the Material Design visual, interaction and motion-design library
import 'package:flutter/material.dart';

// Defining a stateless widget named AmenitiesWidget
class AmenitiesWidget extends StatelessWidget {
  // Declaring a final variable of type String named amenities
  final String amenities;

  // Defining a constructor for AmenitiesWidget
  // This constructor takes a required parameter named amenities
  const AmenitiesWidget({super.key, required this.amenities});

  // Overriding the build method to return a widget tree
  @override
  Widget build(BuildContext context) {
    // Returning a Column widget
    return Column(
      // Aligning the children of the Column along the horizontal axis
      crossAxisAlignment: CrossAxisAlignment.stretch,
      // Defining the children of the Column
      children: [
        // A Text widget displaying 'Amenities'
        Text('Amenities', style: Theme.of(context).textTheme.headlineMedium),
        // A Text widget displaying the value of the amenities variable
        Text(amenities, style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}