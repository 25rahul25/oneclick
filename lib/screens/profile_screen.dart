import 'package:flutter/material.dart';
import 'package:one_click/api.dart';
import 'package:one_click/values/color_constant.dart';
import 'package:one_click/values/radius_constant.dart';
import 'package:one_click/models/entity/option_entity.dart';
import 'package:one_click/screens/edit_profile.dart';
import 'package:one_click/screens/personal_details_screen/personal_details_screen.dart';
import 'package:one_click/values/assets.dart';
import 'package:one_click/utils/ui/app_text_style.dart';
import 'package:one_click/widgets/custom_appbar.dart';
import 'package:one_click/widgets/custom_gradient_button.dart';
import 'package:one_click/widgets/custom_icon_button.dart';
import 'package:one_click/widgets/custom_svg.dart';
import 'package:one_click/widgets/custom_text_with_background.dart';
import 'package:one_click/widgets/gap.dart';
import 'package:sizer/sizer.dart';

import '../inquiry_form.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: _BuildBody(),
      ),
    );
  }
}

class _BuildBody extends StatelessWidget {
  const _BuildBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BuildBackground(
      widget: Column(
        children: [
          CustomAppBar(
            title: Text(
              'Profile',
              style: AppTextStyles.poppinsB1
                  .copyWith(color: AppColors.secondaryColor),
            ),
            leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const CustomSvg(
                svgPath: Assets.backArrow,
                padding: EdgeInsets.all(RadiusConstants.borderRadius12),
              ),
            ),
            actions: [
              CustomIconButton(
                svgPath: Assets.editIcon,
                height: 3.h,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EditProfile()),
                  );
                },
              ),
              const Gap(),
            ],
          ),
          CircleAvatar(
            radius: 50.sp,
            backgroundImage:
                const AssetImage("assets/temp/dummy_profile_image.png"),
          ),
          const Gap(),

          // FutureBuilder(
          //   future: UserDisplayApi().userDisplayList(), // Your API call here
          //   builder: (context, AsyncSnapshot snapshot) {
          //     if (snapshot.connectionState == ConnectionState.waiting) {
          //       return const CircularProgressIndicator(); // Show a progress indicator while loading
          //     } else if (snapshot.hasData && snapshot.data != null) {
          //       var data = snapshot.data!; // Get non-nullable reference to data
          //       if (data.data != null && data.data!.isNotEmpty) {
          //         var name = data.data![0].name.toString();
          //         return CustomTextWithBackground(
          //           text: name,
          //           textStyle: AppTextStyles.poppinsB1.copyWith(color: AppColors.secondaryColor),
          //         );
          //       } else {
          //         return const Text('No user data available');
          //       }
          //     } else {
          //       return const Text('snapshot');
          //     }
          //   },
          // ),
          const Gap(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomGradientButton(
                inProgress: false,
                onTap: () {},
                text: 'Refer & Earn',
              ),
              Gap(width: 4.w),
              CustomGradientButton(
                inProgress: false,
                onTap: () {},
                text: 'Favourites',
              ),
            ],
          ),
          Gap(height: 1.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomGradientButton(
                inProgress: false,
                onTap: () {},
                text: 'Interests',
              ),
              Gap(width: 4.w),
              CustomGradientButton(
                inProgress: false,
                onTap: () {},
                text: 'Saved',
              ),
            ],
          ),
          const Gap(),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.w),
              child: RawScrollbar(
                trackRadius:
                    const Radius.circular(RadiusConstants.borderRadius20),
                thickness: 1.w,
                trackVisibility: true,
                thumbVisibility: true,
                thumbColor: AppColors.secondaryColor,
                trackColor: AppColors.secondaryColor.withOpacity(0.4),
                radius: const Radius.circular(RadiusConstants.borderRadius20),
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: optionList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        if (index == 0) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const PersonalDetailScreen(),
                              ));
                        }

                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 1.h),
                        child: _BuildOption(
                          svgPath: optionList[index].svgPath,
                          text: optionList[index].text,
                          index: index,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BuildBackground extends StatelessWidget {
  const BuildBackground({
    Key? key,
    required this.widget,
  }) : super(key: key);
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: CustomSvg(
            svgPath: Assets.profileBackground,
            height: 25.h,
          ),
        ),
        widget,
      ],
    );
  }
}

class _BuildOption extends StatelessWidget {
  const _BuildOption({
    Key? key,
    required this.svgPath,
    required this.text,
    required this.index,
  }) : super(key: key);
  final String svgPath;
  final String text;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 17.sp,
          backgroundColor: getColorFromIndex(index: index),
          child: CustomSvg(svgPath: svgPath),
        ),
        const Gap(),
        Text(
          text,
          style: AppTextStyles.poppinsB2,
        ),
      ],
    );
  }

  Color getColorFromIndex({required int index}) {
    if (index % 2 == 0) {
      return AppColors.secondaryColor;
    } else {
      return AppColors.primaryColor;
    }
  }
}
