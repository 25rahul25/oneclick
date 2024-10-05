import 'package:flutter/material.dart';
import 'package:one_click/values/color_constant.dart';
import 'package:one_click/utils/ui/app_text_style.dart';
import 'package:one_click/widgets/custom_appbar.dart';
import 'package:one_click/widgets/custom_back_button.dart';
import 'package:one_click/widgets/custom_text_with_background.dart';
import 'package:one_click/widgets/gap.dart';
import 'package:sizer/sizer.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: CustomTextWithBackground(
          text: 'Notification',
          textStyle: AppTextStyles.poppinsB2
              .copyWith(color: AppColors.secondaryColor, fontSize: 18.sp),
        ),
        leading: const CustomBackButton(padding: EdgeInsets.all(4)),
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 3.w),
          child: const _BuildBody()),
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
        Padding(
          padding: EdgeInsets.only(left: 18.w),
          child: const Text('You have 3 message'),
        ),
        const Gap(),
        CustomTextWithBackground(
          text: 'Today',
          textStyle:
              AppTextStyles.poppinsB1.copyWith(color: AppColors.secondaryColor),
        ),
        const Gap(),
        ListView.builder(
          shrinkWrap: true,
          physics: const ScrollPhysics(parent: null),
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListTile(
              leading: SizedBox(
                height: 7.h,
                width: 14.w,
                child: const CircleAvatar(
                  backgroundImage:
                      AssetImage("assets/temp/dummy_profile_image.png"),
                ),
              ),
              title: Text(
                'Top news of IND vs NZ match',
                style: AppTextStyles.poppinsB3,
              ),
              subtitle: Text(
                  "Ind vs NZ 1st ODI: Latham, Williamson deflate India in New Zealand's massive win",
                  style: AppTextStyles.hintText2.copyWith(fontSize: 8.sp)),
              trailing: Text('2 hrs ago',
                  style: AppTextStyles.hintText2.copyWith(fontSize: 10.sp)),
            );
          },
        ),
        const Gap(),
        CustomTextWithBackground(
          text: 'This week',
          textStyle:
              AppTextStyles.poppinsB1.copyWith(color: AppColors.secondaryColor),
        ),
        const Gap(),
        ListView.builder(
          shrinkWrap: true,
          physics: const ScrollPhysics(parent: null),
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListTile(
              leading: SizedBox(
                height: 7.h,
                width: 14.w,
                child: const CircleAvatar(
                  backgroundImage:
                      AssetImage("assets/temp/dummy_profile_image.png"),
                ),
              ),
              title: Text(
                'Top news of IND vs NZ match',
                style: AppTextStyles.poppinsB3,
              ),
              subtitle: Text(
                  "Ind vs NZ 1st ODI: Latham, Williamson deflate India in New Zealand's massive win",
                  style: AppTextStyles.hintText2.copyWith(fontSize: 8.sp)),
              trailing: Text('2 hrs ago',
                  style: AppTextStyles.hintText2.copyWith(fontSize: 10.sp)),
            );
          },
        ),
      ],
    );
  }
}
