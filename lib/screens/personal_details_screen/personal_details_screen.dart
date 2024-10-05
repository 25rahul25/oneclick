import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:one_click/api.dart';
import 'package:one_click/inquiry_form.dart';
import 'package:one_click/values/color_constant.dart';
import 'package:one_click/values/radius_constant.dart';
import 'package:one_click/screens/personal_details_screen/my_business_screen.dart';
import 'package:one_click/screens/personal_details_screen/view_post_screen.dart';
import 'package:one_click/values/assets.dart';
import 'package:one_click/utils/ui/app_text_style.dart';
import 'package:one_click/widgets/custom_appbar.dart';
import 'package:one_click/widgets/custom_back_button.dart';
import 'package:one_click/widgets/custom_icon_button.dart';
import 'package:one_click/widgets/custom_text_with_background.dart';
import 'package:one_click/widgets/gap.dart';
import 'package:sizer/sizer.dart';

class PersonalDetailScreen extends StatelessWidget {
  const PersonalDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          leading: const CustomBackButton(
            padding: EdgeInsets.all(RadiusConstants.borderRadius8),
          ),
          title: CustomTextWithBackground(
            text: 'Profile',
            textStyle: AppTextStyles.poppinsB2,
          ),
        ),
        body: const _BuildBody(),
      ),
    );
  }
}

class _BuildBody extends StatelessWidget {
  const _BuildBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Gap(),
        const _BuildTop(),
        const Gap(),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            "My Status",
            style: AppTextStyles.hintText2,
          ),
        ),
        const _BuildBottom(),
      ],
    );
  }
}

class _BuildTop extends StatelessWidget {
  const _BuildTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Gap(width: 2.w),
        DottedBorder(
          padding: const EdgeInsets.all(RadiusConstants.borderRadius8),
          dashPattern: const [8, 4],
          borderType: BorderType.Circle,
          color: AppColors.secondaryColor,
          child: CircleAvatar(
            radius: 20.sp,
            backgroundImage:
                const AssetImage("assets/temp/dummy_profile_image.png"),
          ),
        ),
        const Gap(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FutureBuilder(
              future: UserDisplayApi().userDisplayList(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.hasData) {
                  var name = snapshot.data!.data![0].name.toString();
                  return Text(name , style: AppTextStyles.poppinsB2,);
                }
                return CustomTextWithBackground(
                  text: "NoBuddy",
                  textStyle: AppTextStyles.poppinsB1
                      .copyWith(color: AppColors.secondaryColor),
                );
              },
            ),
            const Text("2 Posts | 130 Followers"),
          ],
        ),
        const Spacer(),
        CustomIconButton(
          padding: const EdgeInsets.all(RadiusConstants.borderRadius8),
          svgPath: Assets.editIcon,
          onTap: () {},
        ),
        const Gap(),
      ],
    );
  }
}

class _BuildBottom extends StatefulWidget {
  const _BuildBottom({Key? key}) : super(key: key);

  @override
  State<_BuildBottom> createState() => _BuildBottomState();
}

class _BuildBottomState extends State<_BuildBottom>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: [
          SizedBox(
            height: 6.h,
            child: TabBar(
              controller: tabController,
              padding: EdgeInsets.zero,
              isScrollable: true,
              onTap: (int? value) => setState(() {}),
              indicatorColor: Colors.transparent,
              indicatorPadding: EdgeInsets.zero,
              labelPadding: EdgeInsets.symmetric(horizontal: 1.w),
              tabAlignment:TabAlignment.start,
              tabs: [
                Tab(
                  child: customTab(
                    text: "My Business",
                    index: 0,
                    currentIndex: tabController.index,
                  ),
                ),
                Tab(
                  child: customTab(
                    text: "View Post",
                    index: 1,
                    currentIndex: tabController.index,
                  ),
                ),
                Tab(
                  child: customTab(
                    text: "My Interests",
                    index: 2,
                    currentIndex: tabController.index,
                  ),
                ),
                Tab(
                  child: customTab(
                    text: "More",
                    index: 3,
                    currentIndex: tabController.index,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 57.h,
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: tabController,
              children: const [
                MyBusinessScreen(),
                ViewPostScreen(),
                SizedBox(
                  child: Text("ss"),
                ),
                SizedBox(
                  child: Text("ss"),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget customTab({
    required String text,
    required int index,
    required int currentIndex,
  }) {
    return Container(
      alignment: Alignment.center,
      height: 6.h,
      width: 30.w,
      decoration: BoxDecoration(
        gradient: index == currentIndex
            ? AppColors.buttonVerticalGradient
            : LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.primaryColor.withOpacity(0.25),
                  AppColors.secondaryColor.withOpacity(0.25),
                ],
              ),
        borderRadius: BorderRadius.circular(
          RadiusConstants.borderRadius35,
        ),
      ),
      child: Text(
        text,
        style: index == currentIndex
            ? AppTextStyles.poppinsB3
            : AppTextStyles.poppinsB3.copyWith(
                color: AppColors.blackColor.withOpacity(0.5),
              ),
      ),
    );
  }
}
