import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:one_click/values/color_constant.dart';
import 'package:one_click/values/radius_constant.dart';
import 'package:one_click/screens/profile_screen.dart';
import 'package:one_click/values/assets.dart';
import 'package:one_click/utils/ui/app_text_style.dart';
import 'package:one_click/utils/ui/image_picker_helper.dart';
import 'package:one_click/widgets/custom_appbar.dart';
import 'package:one_click/widgets/custom_gradient_button.dart';
import 'package:one_click/widgets/custom_icon_button.dart';
import 'package:one_click/widgets/custom_svg.dart';
import 'package:one_click/widgets/custom_text_field2.dart';
import 'package:one_click/widgets/gap.dart';
import 'package:one_click/widgets/unfocus_wrapper.dart';
import 'package:sizer/sizer.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UnFocusWrapper(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.whiteColor,
          body: const _BuildBody(),
        ),
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
          const Gap(),
          CustomAppBar(
            title: Text(
              'Edit Profile',
              style: AppTextStyles.poppinsB1
                  .copyWith(color: AppColors.secondaryColor),
            ),
            leading: const CustomSvg(
              svgPath: Assets.backArrow,
              padding: EdgeInsets.all(RadiusConstants.borderRadius12),
            ),
            actions: [
              CustomGradientButton(
                height: 47,
                onTap: () {
                  Navigator.of(context).pop();
                },
                text: "Save",
                inProgress: false,
              ),
              const Gap(),
            ],
          ),
          const _BuildProfilePicture(),
          Gap(height: 5.h),
          const Expanded(
            child: BuildForm(),
          ),
        ],
      ),
    );
  }
}

class _BuildProfilePicture extends StatefulWidget {
  const _BuildProfilePicture({Key? key}) : super(key: key);

  @override
  State<_BuildProfilePicture> createState() => _BuildProfilePictureState();
}

class _BuildProfilePictureState extends State<_BuildProfilePicture> {
  File? profileImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 15.h,
      width: 30.w,
      child: Stack(
        children: [
          setProfile(),
          Align(
            alignment: Alignment.bottomRight,
            child: CustomIconButton(
              padding: const EdgeInsets.all(RadiusConstants.borderRadius8),
              onTap: () async {
                await ImagePickerHelper.pickImage(ImageSource.gallery)
                    .then((value) {
                  if (value != null) {
                    setState(() {
                      profileImage = value;
                    });
                  }
                });
              },
              svgPath: Assets.editIcon,
              color: AppColors.whiteColor,
            ),
          ),
        ],
      ),
    );
  }

  CircleAvatar setProfile() {
    return profileImage == null
        ? CircleAvatar(
            radius: 50.sp,
            backgroundImage:
                const AssetImage("assets/temp/dummy_profile_image.png"))
        : CircleAvatar(
            radius: 50.sp,
            backgroundImage: FileImage(profileImage!),
          );
  }
}

class BuildForm extends StatefulWidget {

  const BuildForm({Key? key}) : super(key: key);

  @override
  State<BuildForm> createState() => _BuildFormState();
}

class _BuildFormState extends State<BuildForm> {
  TextEditingController nameController = TextEditingController();

  TextEditingController mobileController = TextEditingController();

  TextEditingController birthdayController = TextEditingController();

  TextEditingController languageController = TextEditingController();

  TextEditingController maritalController = TextEditingController();

  TextEditingController occupationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return RawScrollbar(
      trackRadius: const Radius.circular(RadiusConstants.borderRadius20),
      thickness: 1.w,
      trackVisibility: true,
      thumbVisibility: true,
      thumbColor: AppColors.secondaryColor,
      trackColor: AppColors.secondaryColor.withOpacity(0.4),
      radius: const Radius.circular(RadiusConstants.borderRadius20),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        children: [
          Text(
            'Personal Details',
            style: AppTextStyles.poppinsB2,
          ),
          CustomTextField2(
            label: const Text('Name'),
            controller: nameController,
          ),
          const Gap(),
          CustomTextField2(
            labelText: 'Mobile Number',
            controller: mobileController,
          ),
          const Gap(),
          CustomTextField2(
            labelText: 'Birthday',
            controller: birthdayController,
          ),
          const Gap(),
          CustomTextField2(
            labelText: 'Language Material',
            controller: languageController,
          ),
          const Gap(),
          CustomTextField2(
            labelText: 'Marital status',
            controller: maritalController,
          ),
          const Gap(),
          CustomTextField2(
            labelText: 'Occupation',
            controller: occupationController,
          ),
          const Gap(),
          Text(
            "Family & Friends",
            style: AppTextStyles.poppinsB2,
          ),
          const Gap(),
          CustomTextField2(
            labelText: 'Marital status',
            controller: nameController,
          ),
          const Gap(),
          CustomTextField2(
            labelText: 'Occupation',
            controller: nameController,
          ),
          const Gap(),
        ],
      ),
    );
  }
}
