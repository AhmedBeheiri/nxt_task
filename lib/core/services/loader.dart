// Importing necessary packages and modules
import 'dart:async';
import 'package:darty_commons/ankos/strings_anko.dart';
import 'package:flutter/material.dart';

// Importing the AppColors class
import '../constants/app_colors.dart';

// Defining a class named Loader
class Loader {
  // Private constructor to prevent instantiation
  Loader._();

  // Declaring a BuildContext variable
  late BuildContext _context;
  // Declaring a BuildContext variable for dismissing the loader
  late BuildContext _dismissingContext;
  // Declaring a Completer for the loader
  Completer waitForLoader = Completer()..complete();

  // Declaring a static instance of Loader
  static Loader _instance = Loader._();

  // Getter for the instance of Loader
  static Loader get instance => _instance;

  // Method to create a new instance of Loader
  static void newInstance() => _instance = Loader._();

  // Method to hide the loader
  void hide() {
    // Checking if the loader is not completed
    if (!waitForLoader.isCompleted) {
      try {
        // Checking if the loader can be popped
        if (Navigator.of(_dismissingContext).canPop()) {
          // Popping the loader
          Navigator.of(_dismissingContext).pop(true);
        }
      } catch (e) {
        // Logging the error
        e.toString().logError(tag: 'Loader');
      }
    }
  }

  // Method to show the loader
  void show(BuildContext context) {
    // Setting the context
    _context = context;
    // Checking if the loader is completed
    if (waitForLoader.isCompleted) {
      // Creating a new Completer for the loader
      waitForLoader = Completer();
      // Showing the loader dialog
      showDialog<dynamic>(
        context: _context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          // Setting the dismissing context
          _dismissingContext = context;
          // Returning the PopScope widget with the LoadingImage child
          return const PopScope(
            canPop:  false,
            child: LoadingImage(),
          );
        },
      );
    }
  }
}

// Defining a StatefulWidget named LoadingImage
class LoadingImage extends StatefulWidget {
  // Defining the constructor for LoadingImage
  const LoadingImage({super.key});

  // Overriding the createState method to create a state for LoadingImage
  @override
  State<LoadingImage> createState() => _LoadingImageState();
}

// Defining a State class for LoadingImage
class _LoadingImageState extends State<LoadingImage> {
  // Overriding the build method to describe the part of the user interface represented by this widget
  @override
  Widget build(BuildContext context) {
    // Returning a Center widget with a Container child
    return Center(
      child: Container(
        // Setting the width and height of the container
        width: 75,
        height: 75,
        // Setting the decoration for the container
        decoration: const BoxDecoration(
          // Setting the border radius for the container
          borderRadius: BorderRadius.all(Radius.circular(12)),
          // Setting the color for the container
          color: AppColors.white,
        ),
        // Adding a Padding widget as a child
        child: const Padding(
          // Setting the padding
          padding: EdgeInsets.all(16.0),
          // Adding a CircularProgressIndicator as a child
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }

  // Overriding the dispose method to clean up the controller when the widget is disposed
  @override
  void dispose() {
    // Checking if the loader is not completed
    if (!Loader.instance.waitForLoader.isCompleted) {
      // Completing the loader
      Loader.instance.waitForLoader.complete();
    }
    // Calling the dispose method of the superclass
    super.dispose();
  }
}