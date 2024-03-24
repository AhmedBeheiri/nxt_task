// Importing necessary packages and modules
// ignore_for_file: depend_on_referenced_packages

import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:nxt_task/features/reservations/presentation/pages/reservation_page.dart';
import 'core/constants/app_theme.dart';
import 'core/di/injection_container.dart';
import 'package:logging/logging.dart';
import 'package:path_provider/path_provider.dart';
import 'core/logic/preferences_cubit/preferences_cubit.dart';

// Defining the main function
void main() async {
  // Ensuring that the widget binding is initialized
  WidgetsFlutterBinding.ensureInitialized();
  // Configuring the dependency injection
  configureInjection();
  // Setting the storage for the HydratedBloc
  HydratedBloc.storage = await HydratedStorage.build(
    // Setting the storage directory based on whether the app is running on the web or not
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getApplicationDocumentsDirectory(),
  );
  // Running the app with a BlocProvider for the PreferencesCubit
  runApp(BlocProvider(
    // Creating the PreferencesCubit
    create: (context) => di<PreferencesCubit>(),
    // Setting the child of the BlocProvider to MyApp
    child: const MyApp(),
  ));
  // Setting the logging level based on whether the app is in debug mode or not
  Logger.root.level =
      !kDebugMode ? Level.OFF : Level.ALL; // defaults to Level.INFO
  // Listening to the logging records and logging them
  Logger.root.onRecord.listen((record) {
    log(
      '${record.loggerName}: ${record.message}',
      level: record.level.value,
      name: record.level.name,
      time: record.time,
      error: record.error,
      stackTrace: record.stackTrace,
      zone: record.zone,
    );
  });
}

// Defining a stateless widget named MyApp
class MyApp extends StatelessWidget {
  // Defining a constructor for MyApp
  const MyApp({super.key});

  // Overriding the build method to return a widget tree
  @override
  Widget build(BuildContext context) {
    // Returning a BlocBuilder widget
    return BlocBuilder<PreferencesCubit, PreferencesState>(
        // Defining the builder function of the BlocBuilder widget
        builder: (context, state) {
      // Returning a ScreenUtilInit widget
      return ScreenUtilInit(
        // Setting the design size of the ScreenUtilInit widget
        designSize: const Size(375, 812),
        // Defining the builder function of the ScreenUtilInit widget
        builder: (context, child) =>
            // Returning a MaterialApp widget
            MaterialApp(
          // Disabling the debug banner
          debugShowCheckedModeBanner: false,
          // Defining the builder function of the MaterialApp widget
          builder: builder,
          // Setting the title of the MaterialApp widget
          title: "NXT Task",
          // Setting the theme of the MaterialApp widget based on the current state
          theme: state.darkTheme ? AppTheme.dark : AppTheme.light,
          // Setting the home of the MaterialApp widget to ReservationPage
          home: const ReservationPage(),
        ),
      );
    });
  }

  // Defining a builder function
  Widget builder(BuildContext context, Widget? widget) {
    // Returning an empty Container widget if the widget is null
    if (widget == null) return Container();
    // Returning a MediaQuery widget
    return MediaQuery(
      // Copying the data from the current MediaQuery and setting the textScaler
      data: MediaQuery.of(context)
          .copyWith(textScaler: const TextScaler.linear(1.0)),
      // Setting the child of the MediaQuery widget
      child: widget,
    );
  }
}
