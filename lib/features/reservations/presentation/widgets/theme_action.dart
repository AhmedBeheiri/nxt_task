// Importing necessary packages and modules
import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nxt_task/core/logic/preferences_cubit/preferences_cubit.dart';

// Importing the app colors
import '../../../../core/constants/app_colors.dart';

// Defining a stateless widget named ThemeAction
class ThemeAction extends StatelessWidget {
  // Defining a constructor for ThemeAction
  const ThemeAction({
    super.key,
  });

  // Overriding the build method to return a widget tree
  @override
  Widget build(BuildContext context) {
    // Returning a BlocBuilder widget
    return BlocBuilder<PreferencesCubit, PreferencesState>(
      // Defining the builder function of the BlocBuilder widget
      builder: (context, state) {
        // Returning a Padding widget
        return Padding(
          // Setting the padding of the Padding widget
          padding: EdgeInsets.all(16.0.h),
          // Defining the child of the Padding widget as an AnimatedToggleSwitch widget
          child: AnimatedToggleSwitch<bool>.dual(
            // Setting the current value of the AnimatedToggleSwitch widget
            current: !state.darkTheme,
            // Setting the spacing of the AnimatedToggleSwitch widget
            spacing: 8.0.w,
            // Defining the onChanged function of the AnimatedToggleSwitch widget
            onChanged: (i) {
              // Toggling the theme when the switch is changed
              context.read<PreferencesCubit>().toggleTheme();
            },
            // Setting the borderWidth of the AnimatedToggleSwitch widget
            borderWidth: 1.0,
            // Defining the textBuilder function of the AnimatedToggleSwitch widget
            textBuilder: (i) => SvgPicture.asset(
              // Returning a different SVG picture based on the current value of the switch
              i ? 'assets/images/moon.svg' : 'assets/images/sun.svg',
            ),
            // Defining the styleBuilder function of the AnimatedToggleSwitch widget
            styleBuilder: (i) => ToggleStyle(
              // Setting the backgroundColor of the ToggleStyle
              backgroundColor: i ? AppColors.offWhite : AppColors.offWhiteDark,
              // Setting the borderRadius of the ToggleStyle
              borderRadius: BorderRadius.circular(30.r),
              // Setting the indicatorColor of the ToggleStyle
              indicatorColor: i ? AppColors.black : AppColors.grey,
              // Setting the indicatorBorder of the ToggleStyle
              indicatorBorder: Border.all(
                // Setting the color of the Border
                color: i ? AppColors.black : AppColors.grey,
                // Setting the width of the Border
                width: 1.0,
              ),
            ),
            // Setting the first value of the AnimatedToggleSwitch widget
            first: false,
            // Setting the second value of the AnimatedToggleSwitch widget
            second: true,
          ),
        );
      },
    );
  }
}