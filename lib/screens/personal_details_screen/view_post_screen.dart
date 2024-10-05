import 'package:flutter/material.dart';
import 'package:one_click/values/color_constant.dart';
import 'package:one_click/values/radius_constant.dart';
import 'package:one_click/screens/personal_details_screen/add_post_screen.dart';
import 'package:one_click/values/assets.dart';
import 'package:one_click/utils/ui/app_text_style.dart';
import 'package:one_click/widgets/custom_gradient_button.dart';
import 'package:one_click/widgets/custom_icon_button.dart';
import 'package:one_click/widgets/gap.dart';
import 'package:sizer/sizer.dart';

class ViewPostScreen extends StatelessWidget {
  const ViewPostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BuildBody(),
    );
  }
}

class BuildBody extends StatefulWidget {
  const BuildBody({Key? key}) : super(key: key);

  @override
  State<BuildBody> createState() => _BuildBodyState();
}

class _BuildBodyState extends State<BuildBody> {
 ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 50,),
        Row(
          children: [
            const Gap(),
            Text(
              "All Post(03)",
              style: AppTextStyles.poppinsB2,
            ),
            const Spacer(),
            CustomGradientButton(
              height: 5.h,
              textStyle: AppTextStyles.poppinsB2,
              isVertical: true,
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const AddPostScreen(),
                  ),
                );
              },
              text: "Add Post",
              inProgress: false,
            ),
            const Gap(),
          ],
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.5.w),
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
                itemCount: 2,
                controller: scrollController,
                itemBuilder: (context, index) {
                  return const _CustomListTile(
                    text: 'John doe',
                    imagePath: 'assets/temp/dummy_profile_image.png',
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    Key? key,
    required this.text,
    required this.imagePath,
  }) : super(key: key);
  final String text;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 1.h,
        horizontal: 1.w,
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Gap(),
              CircleAvatar(
                radius: 20.sp,
                backgroundImage: AssetImage(imagePath),
              ),
              Gap(width: 2.w),
              Text(
                text,
                style: AppTextStyles.poppinsB2,
              ),
              Text(
                '  Added a new post',
                style: TextStyle(fontSize: 11, color: Colors.grey),
                // style: AppTextStyles.hintText3,
              ),
              const Spacer(),
              Text(
                '2min ago',
                style: AppTextStyles.hintText3.copyWith(
                  fontSize: 7.sp,
                ),
              ),
              const Gap(),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 2.w,
              vertical: 1.h,
            ),
            padding: EdgeInsets.all(10.sp),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    blurRadius: 4,
                    offset: const Offset(
                      2.5,
                      2.4,
                    ),
                    spreadRadius: 0.2,
                    color: AppColors.blackColor.withOpacity(0.1)),
              ],
              color: AppColors.whiteColor,
              borderRadius:
                  BorderRadius.circular(RadiusConstants.borderRadius12),
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                        style: AppTextStyles.poppinsB3.copyWith(
                          color: AppColors.blackColor.withOpacity(0.6),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_vert,
                        color: AppColors.greyColor,
                      ),
                    ),
                  ],
                ),
                const Gap(),
                Row(
                  children: [
                    CustomIconButton(
                      onTap: () {},
                      svgPath: Assets.shareIconWithShadow,
                    ),
                    const Gap(),
                    CustomIconButton(
                      onTap: () {},
                      svgPath: Assets.likeIconWithShadow,
                    ),
                    const Gap(),
                    CustomIconButton(
                      onTap: () {},
                      svgPath: Assets.messageIconWithShadow,
                    ),
                    const Spacer(),
                    SizedBox(
                      height: 8.h,
                      width: 22.w,
                      child: Image.asset(
                        "assets/temp/repair_demo.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
