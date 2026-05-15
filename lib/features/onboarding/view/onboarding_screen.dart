import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/constants/app_constants.dart';
import '../../../core/routing/app_routes.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/text_styles.dart';
import '../../../core/widgets/custom_button_and_elips.dart';
import '../cubit/onboarding_cubit.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => OnboardingCubit(),
      child: const OnboardingView(),
    );
  }
}

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _pageController = PageController();

  final List<Map<String, dynamic>> _onboardingData = [
    {
      'title': 'Easy Appointment Booking',
      'description': 'Book an appointment in seconds with your preferred doctor.',
      'icon': Icons.calendar_month_outlined,
    },
    {
      'title': 'Find Best Doctors',
      'description': 'Get access to top medical professionals in your area.',
      'icon': Icons.medical_services_outlined,
    },
    {
      'title': 'Smart Queue System',
      'description': 'Know your queue number and estimated waiting time.',
      'icon': Icons.access_time_outlined,
    },
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () => Navigator.pushReplacementNamed(context, AppRoutes.welcome),
                child: Text('Skip', style: TextStyles.bodyMedium.copyWith(color: AppColors.mainColor)),
              ),
            ),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: _onboardingData.length,
                onPageChanged: (index) {
                  context.read<OnboardingCubit>().updatePage(index);
                },
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(AppConstants.paddingLarge),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 250,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: AppColors.lightBlue,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            _onboardingData[index]['icon'],
                            size: 100,
                            color: AppColors.mainColor,
                          ),
                        ),
                        const SizedBox(height: 40),
                        Text(
                          _onboardingData[index]['title'],
                          style: TextStyles.heading2,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          _onboardingData[index]['description'],
                          style: TextStyles.bodyLarge,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(AppConstants.paddingLarge),
              child: BlocBuilder<OnboardingCubit, OnboardingState>(
                builder: (context, state) {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          _onboardingData.length,
                          (index) => AnimatedContainer(
                            duration: AppConstants.defaultAnimationDuration,
                            margin: const EdgeInsets.only(right: 8),
                            height: 8,
                            width: state.currentPage == index ? 24 : 8,
                            decoration: BoxDecoration(
                              color: state.currentPage == index
                                  ? AppColors.mainColor
                                  : AppColors.greyMedium,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 32),
                      CustomButtonAndElips(
                        text: state.currentPage == _onboardingData.length - 1 ? 'Get Started' : 'Next',
                        onPressed: () {
                          if (state.currentPage == _onboardingData.length - 1) {
                            Navigator.pushReplacementNamed(context, AppRoutes.chooseLoginOrRigester);
                          } else {
                            _pageController.nextPage(
                              duration: AppConstants.defaultAnimationDuration,
                              curve: Curves.easeInOut,
                            );
                          }
                        }, backgroundColor: AppColors.mainColor,
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
