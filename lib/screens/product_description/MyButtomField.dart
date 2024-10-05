import 'package:flutter/material.dart';
import 'package:one_click/inquiry_form.dart';
import 'package:one_click/values/color_constant.dart';
import 'package:one_click/utils/ui/app_text_style.dart';
import 'package:one_click/widgets/custom_button_with_gradient_border.dart';
import 'package:one_click/widgets/custom_gradient_button.dart';
import 'package:one_click/widgets/gap.dart';
import 'package:sizer/sizer.dart';

class MyBottomField extends StatelessWidget {
  const MyBottomField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(),
            Row(
              children: [
                Container(
                  height: 15.h,
                  width: 30.w,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/temp/product_item.png"),
                          fit: BoxFit.contain)),
                ),
                Column(
                  children: [
                    SizedBox(
                      //width: 57.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 33.w,
                            child: Text(
                              "Rainbow shoes and Enterprice",
                              style: AppTextStyles.poppinsB3,
                            ),
                          ),
                          SizedBox(
                            width: 24.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 12.sp,
                                ),
                                Text(
                                  '3.0(52 REVIEWS)',
                                  style: AppTextStyles.poppinsB4
                                      .copyWith(fontSize: 5.2.sp),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const _CustomRow(
                        text1: "Open Now :",
                        text2: "Mon - Sun :- 10:30 am - 9:30 pm"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 25.w,
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: AppColors.primaryColor,
                                size: 12.sp,
                              ),
                              Text(
                                "Location",
                                style: AppTextStyles.poppinsB3,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                            width: 30.w,
                            child: Text(
                              "218/B, Near Mala sheri Mumbai, Maharastra - 259632",
                              style: AppTextStyles.poppinsB4,
                            )),
                      ],
                    )
                  ],
                )
              ],
            ),
            const Gap(),
            CustomGradientButton(
              onTap: () {},
              text: "Follow",
              inProgress: false,
              isVertical: true,
              width: 90.w,
            ),
            const Gap(),
            Text(
              "More from this Startup",
              style: AppTextStyles.poppinsB3,
            ),
            const Gap(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                _CustomColum(text: "Neon blue shoes"),
                _CustomColum(text: "Lather red shoes"),
                _CustomColum(text: "Lather white & orange"),
                _CustomColum(text: "Sport shoes"),
              ],
            ),
            const Gap(),
            Text("User reviews on this Product",
                style: AppTextStyles.poppinsB3, textAlign: TextAlign.left),
            const Gap(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 4.h,
                          width: 8.w,
                          child: const CircleAvatar(
                            backgroundImage: AssetImage(
                              "assets/temp/girl_profile.png",
                            ),
                          ),
                        ),
                        Gap(
                          width: 2.w,
                        ),
                        Text(
                          "Sama Seth",
                          style: AppTextStyles.poppinsB3,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image(
                          image: const AssetImage("assets/temp/product_item.png"),
                          height: 5.h,
                          width: 12.w,
                        ),
                        Image(
                          image: const AssetImage("assets/temp/product_item.png"),
                          height: 5.h,
                          width: 12.w,
                        ),
                      ],
                    ),
                  ],
                ),
                Gap(
                  width: 2.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 30.w,
                          child: Text(
                            'Easy The most comfortable Shoes',
                            style: AppTextStyles.poppinsB3,
                          ),
                        ),
                        Text(
                          "4.5",
                          style: AppTextStyles.poppinsB4,
                        ),
                        Icon(
                          Icons.star_border,
                          color: Colors.yellow,
                          size: 9.sp,
                        ),
                        Icon(
                          Icons.star_border,
                          color: Colors.yellow,
                          size: 9.sp,
                        ),
                        Icon(
                          Icons.star_border,
                          color: Colors.yellow,
                          size: 9.sp,
                        ),
                        Icon(
                          Icons.star_border,
                          color: Colors.yellow,
                          size: 9.sp,
                        ),
                      ],
                    ),
                    SizedBox(
                        width: 50.w,
                        child: Text(
                          "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem IpsumLorem Ipsum Lorem Ipsum Lorem...",
                          style: AppTextStyles.hintText,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        )),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 75,),
          ],
        ),
      ),
    );
  }
}

class _CustomRow extends StatelessWidget {
  const _CustomRow({Key? key, required this.text1, required this.text2})
      : super(key: key);
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 25.w,
          child: Text(
            text1,
            style: AppTextStyles.hintText,
          ),
        ),
        SizedBox(
          width: 30.w,
          child: Text(
            text2,
            style: AppTextStyles.poppinsB4,
          ),
        ),
      ],
    );
  }
}

class _CustomColum extends StatelessWidget {
  const _CustomColum({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButtonWithGradientBorder(
            onTap: () {},
            height: 9.h,
            width: 20.w,
            widget: Image(
              image: const AssetImage("assets/temp/product_item.png"),
              height: 10.h,
              width: 20.w,
            )),
        SizedBox(
          width: 20.w,
          child: Text(text, style: AppTextStyles.hintText2),
        ),
      ],
    );
  }
}
