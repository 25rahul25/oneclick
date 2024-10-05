import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:one_click/values/color_constant.dart';
import 'package:one_click/values/radius_constant.dart';
import 'package:one_click/values/assets.dart';
import 'package:one_click/utils/ui/app_text_style.dart';
import 'package:one_click/utils/ui/image_picker_helper.dart';
import 'package:one_click/widgets/custom_back_button.dart';
import 'package:one_click/widgets/custom_icon_button.dart';
import 'package:one_click/widgets/custom_svg.dart';
import 'package:one_click/widgets/custom_text_field2.dart';
import 'package:one_click/widgets/custom_text_with_background.dart';
import 'package:one_click/widgets/gap.dart';
import 'package:sizer/sizer.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({Key? key}) : super(key: key);

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  List<File> imagesList = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const _BuildTop(),
              _BuildBottom(
                imagesList: imagesList,
              ),
            ],
          ),
        ),
        floatingActionButton: CustomIconButton(
          radius: 25.sp,
          svgPath: Assets.addIconWithBackground,
          onTap: () {
            showBottomShit(context: context);
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }

  showBottomShit({required BuildContext context}) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      barrierColor: Colors.transparent,
      context: context,
      builder: (context) {
        return Container(
          color: Colors.transparent,
          height: 25.h,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  color: AppColors.whiteColor,
                  height: 22.h,
                  width: 100.w,
                  padding: EdgeInsets.symmetric(
                    horizontal: 3.w,
                    vertical: 3.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomIconButton(
                        onTap: () {
                          ImagePickerHelper.pickMultiImage(ImageSource.gallery)
                              .then((value) {
                            if (value != null) {
                              setState(() {
                                imagesList.addAll(value);
                              });
                            }
                          });
                        },
                        svgPath: Assets.photoIcon,height: 27,
                        text: "Photo",
                      ),
                      CustomIconButton(
                        onTap: () {},
                        svgPath: Assets.locationIcon,height: 27,
                        text: "Location",
                      ),
                      CustomIconButton(
                        onTap: () {
                          ImagePickerHelper.pickImage(ImageSource.camera)
                              .then((value) {
                            if (value != null) {
                              setState(() {
                                imagesList.add(value);
                              });
                            }
                          });
                        },
                        svgPath: Assets.cameraIcon,height: 27,
                        text: "Camera",
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: CustomIconButton(
                  radius: 20.sp,
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  svgPath: Assets.arrowDownWithBackground,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _BuildTop extends StatelessWidget {
  const _BuildTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomBackButton(
          padding: EdgeInsets.all(RadiusConstants.borderRadius8),
        ),
        CustomTextWithBackground(
          text: 'Add Post',
          textStyle: AppTextStyles.poppinsB2,
        ),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: Text("Post", style: AppTextStyles.poppinsB2),
        ),
      ],
    );
  }
}

class _BuildBottom extends StatefulWidget {
  const _BuildBottom({
    Key? key,
    required this.imagesList,
  }) : super(key: key);
  final List<File> imagesList;

  @override
  State<_BuildBottom> createState() => _BuildBottomState();
}

class _BuildBottomState extends State<_BuildBottom> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(),
        Row(
          children: [
            const Gap(),
            CircleAvatar(
              radius: 25.sp,
              backgroundImage:
                  const AssetImage("assets/temp/dummy_profile_image.png"),
            ),
            const Gap(),
            Text(
              "Maria Seth",
              style: AppTextStyles.poppinsB2,
            ),
          ],
        ),
        Gap(height: 5.h),
        const CustomTextField2(
          hintText: 'Write what is on your mind',
          prefixIcon: CustomSvg(svgPath: Assets.lineIcon),
          textInputType: TextInputType.multiline,
          hideBorder: true,
          maxLines: null,
        ),
        Gap(height: 3.h),
        SizedBox(
          height: 50.h,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemCount: widget.imagesList.length,
            itemBuilder: (context, index) {
              return SizedBox(
                height: 22.h,
                child: Stack(
                  children: [
                    Container(
                      height: 20.h,
                      width: 41.w,
                      margin:
                          const EdgeInsets.all(RadiusConstants.borderRadius12),
                      child: Image.file(
                        widget.imagesList[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: CustomIconButton(
                        svgPath: Assets.cancelIconWithBackground,
                        onTap: () {
                          widget.imagesList.removeAt(index);
                          setState(() {});
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
