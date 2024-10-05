import 'package:flutter/material.dart';
import 'package:one_click/values/color_constant.dart';
import 'package:one_click/values/radius_constant.dart';
import 'package:one_click/values/assets.dart';
import 'package:one_click/utils/ui/app_text_style.dart';
import 'package:one_click/widgets/custom_appbar.dart';
import 'package:one_click/widgets/custom_icon_button.dart';
import 'package:one_click/widgets/custom_svg.dart';
import 'package:one_click/widgets/custom_text_with_background.dart';
import 'package:sizer/sizer.dart';

class CategoryScreen extends StatefulWidget {

 const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  List<Image> category = [
    Image.asset(
      'assets/temp/agriculture.jpg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/temp/Apparel.png',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/temp/bike.jpg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/temp/baby.jpg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/temp/beauty.jpg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/temp/books.webp',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/temp/chemicals.webp',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/temp/cun.jpg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/temp/Electrician.png',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/temp/elect.jpg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/temp/energy.jpg',
      fit: BoxFit.cover,
    ),
  ];

  List<String> cate = ["Agriculture","Apparel","Automobiles & Two wheelers","Baby care","Beauty & Personal care","Book","Chemicals","Construction & Real estate","Eletrical equuipment & supplies","Eletonics","Energy",];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          centerTitle: true,
          title: const CustomSvg(svgPath: Assets.logo),
          leading: Padding(
            padding: EdgeInsets.all(3.sp),
            child: CircleAvatar(
              radius: 18.sp,
              backgroundImage:
              const AssetImage("assets/temp/dummy_profile_image.png"),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 3.w),
              child: CustomIconButton(
                onTap: () {},
                svgPath: Assets.notificationIcon,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: CustomSvg(
                    svgPath: Assets.backArrow,
                    height: 25,
                    width: 8.w,
                    padding: const EdgeInsets.all(RadiusConstants.borderRadius12),
                  ),
                ),
                CustomTextWithBackground(
                  text: 'All Categories',
                  textStyle: AppTextStyles.poppinsB2
                      .copyWith(color: AppColors.secondaryColor, fontSize: 15.sp),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: category.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        const SizedBox(width: 15,),
                        Container(
                            margin: const EdgeInsets.all(5),
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: category[index])
                        ),
                        const  SizedBox(width: 10,),
                        Text(cate[index],style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w600),)
                      ],
                    );
                  },),
            )
          ],
        )
      ),
    );
  }
}


