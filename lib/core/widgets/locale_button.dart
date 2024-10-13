import 'package:expensify/core/cubits/locale_cubit.dart';
import 'package:expensify/core/helpers/functions.dart';
import 'package:expensify/core/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';

class LocaleButton extends StatelessWidget {
  const LocaleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: isArabic() ? 'Switch to English' : 'Switch to Arabic',
      child: ElevatedButton(
        onPressed: () {
          isArabic()
              ? context.read<LocalizationCubit>().changeLocale('en')
              : context.read<LocalizationCubit>().changeLocale('ar');
        },
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius:
                BorderRadius.all(Radius.circular(8)), // Rounded corners
          ),
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          backgroundColor: ColorsManager.violet100,
          elevation: 4,
          shadowColor: Colors.black.withOpacity(0.2),
        ),
        child: BlocBuilder<LocalizationCubit, Locale>(
          builder: (context, state) {
            return isArabic() ? arabicRow() : englishRow();
          },
        ),
      ),
    );
  }

  Row englishRow() {
    return Row(
      mainAxisSize: MainAxisSize.min, // Size of the button
      children: [
        const Text(
          'العربية',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        8.horizontalSpace,
        const Icon(
          Bootstrap.globe,
          size: 20,
          color: Colors.white,
        ),
      ],
    );
  }

  Row arabicRow() {
    return Row(
      mainAxisSize: MainAxisSize.min, // Size of the button
      children: [
        const Icon(
          Bootstrap.globe,
          size: 20,
          color: Colors.white,
        ),
        8.horizontalSpace,
        const Text(
          'English',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
