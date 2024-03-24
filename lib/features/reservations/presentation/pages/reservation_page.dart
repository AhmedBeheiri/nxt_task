// Importing necessary packages and modules
import 'package:darty_commons/ankos/strings_anko.dart';
import 'package:darty_commons/darty_commons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nxt_task/core/constants/app_colors.dart';
import 'package:nxt_task/core/di/injection_container.dart';
import 'package:nxt_task/features/reservations/presentation/manager/reservation_cubit.dart';
import '../../../../core/services/loader.dart';
import '../widgets/reservations_bottom_modal.dart';
import '../widgets/theme_action.dart';

// Defining a stateless widget named ReservationPage
class ReservationPage extends StatelessWidget {
  // Defining a constructor for ReservationPage
  const ReservationPage({super.key});

  // Overriding the build method to return a widget tree
  @override
  Widget build(BuildContext context) {
    // Returning a BlocProvider to provide the ReservationCubit to the widget tree
    return BlocProvider(
      // Creating a new instance of ReservationCubit using dependency injection
      create: (context) => di<ReservationCubit>(),
      // Defining the child widget as _Page
      child: const _Page(),
    );
  }
}

// Defining a stateful widget named _Page
class _Page extends StatefulWidget {
  // Defining a constructor for _Page
  const _Page();

  // Overriding the createState method to return a new instance of _PageState
  @override
  State<_Page> createState() => _PageState();
}

// Defining a state class named _PageState that extends the state of _Page
class _PageState extends State<_Page> {
  // Overriding the initState method to perform setup logic
  @override
  void initState() {
    // Calling the superclass's initState method
    super.initState();
    // Requesting reservations when the widget is initialized
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      context.read<ReservationCubit>().getReservations();
    });

  }

  // Overriding the build method to return a widget tree
  @override
  Widget build(BuildContext context) {
    // Returning a MultiBlocListener to listen to multiple blocs
    return // Defining the child widget as a Scaffold
        Scaffold(
      // Defining the AppBar
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: Padding(
          padding: EdgeInsets.all(5.0.h),
          child: SvgPicture.asset(
            'assets/images/theme.svg',
            colorFilter: ColorFilter.mode(
                Theme.of(context).iconTheme.color!, BlendMode.srcIn),
          ),
        ),
        title: Text(
          'Theme',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: const [ThemeAction()],
      ),
      // Defining the body of the Scaffold
      body: MultiBlocListener(
        // Defining the listeners
        listeners: [
          // Listening to ReservationCubit
          BlocListener<ReservationCubit, ReservationState>(
            // Defining when to listen
            listenWhen: (previous, current) =>
                previous.loading != current.loading,
            // Defining what to do when the state changes
            listener: (context, state) {
              // Showing or hiding a loader based on the loading state
              state.loading
                  ? Loader.instance.show(context)
                  : Loader.instance.hide();
            },
          ),
          // Listening to ReservationCubit
          BlocListener<ReservationCubit, ReservationState>(
            // Defining when to listen
            listenWhen: (previous, current) =>
                previous.failure != current.failure,
            // Defining what to do when the state changes
            listener: (context, state) {
              // If there's a failure, log the error and show a SnackBar
              if (state.failure != null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.failure!.message),
                    backgroundColor: AppColors.redError,
                    showCloseIcon: true,
                    behavior: SnackBarBehavior.floating,

                  ),
                );
              }
            },
          ),
        ],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    showDragHandle: true,
                    isScrollControlled: true,
                    builder: (_) => BlocProvider.value(
                      value: context.read<ReservationCubit>(),
                      child: const ReservationsBottomModal(),
                    ),
                  );
                },
                child: Text(
                  'Open Reservations',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.surface,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.0.h,
            ),
          ],
        ),
      ),
    );
  }
}
