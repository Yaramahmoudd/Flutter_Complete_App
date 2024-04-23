import 'package:flutter/material.dart';
import 'package:flutter_complete_app/core/helpers/extensions.dart';
import 'package:flutter_complete_app/features/onboarding/widgets/doc_logo_and_name.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/routing/routes.dart';
import '../../../core/theming/styles.dart';
import '../widgets/get_start_button.dart';
import '../widgets/doctor_image_and_text.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const DocLogoAndName(),
              SizedBox(height: 30.h),
              const DoctorImageAndText(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Text(
                      'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                      textAlign:TextAlign.center,style: TextStyles.font14GrayRegular,
                    ),
                    SizedBox(height: 30.h),
                GetStartedButton(
                  text: 'Get Started',
                  onTap: () {
                    context.pushNamed(Routes.loginScreen);
                  },
                ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
