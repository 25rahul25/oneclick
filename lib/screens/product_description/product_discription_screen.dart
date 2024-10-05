import 'package:flutter/material.dart';
import 'package:one_click/inquiry_form.dart';
import 'package:one_click/values/color_constant.dart';
import 'package:one_click/values/radius_constant.dart';
import 'package:one_click/screens/manage_product/Product_manage.dart';
import 'package:one_click/screens/product_description/MyButtomField.dart';
import 'package:one_click/screens/product_description/specification.dart';
import 'package:one_click/values/assets.dart';
import 'package:one_click/utils/ui/app_text_style.dart';
import 'package:one_click/widgets/custom_appbar.dart';
import 'package:one_click/widgets/custom_drop_down_button2.dart';
import 'package:one_click/widgets/custom_gradient_button.dart';
import 'package:one_click/widgets/custom_svg.dart';
import 'package:one_click/widgets/custom_text_with_background.dart';
import 'package:one_click/widgets/gap.dart';
import 'package:one_click/widgets/unfocus_wrapper.dart';
import 'package:sizer/sizer.dart';

class ProductDescriptionScreen extends StatelessWidget {
  const ProductDescriptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UnFocusWrapper(
      child: Scaffold(
          
          appBar: CustomAppBar(
            title: CustomTextWithBackground(
                text: "Men’s shoes", textStyle: AppTextStyles.poppinsB2),
            leading:  InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: const CustomSvg(
                svgPath: Assets.backArrow,
                padding: EdgeInsets.all(RadiusConstants.borderRadius12),
              ),
            ),
          ),
          body:const SingleChildScrollView(child: _BuildBody())),
    );
  }
}

class _BuildBody extends StatefulWidget {
  const _BuildBody({Key? key}) : super(key: key);

  @override
  State<_BuildBody> createState() => _BuildBodyState();
}

class _BuildBodyState extends State<_BuildBody> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 25.h,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/temp/product_item.png"),
                fit: BoxFit.cover),
          ),
        ),
       const SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color:const Color(0xff00818A)
              ),
            ),
           const SizedBox(width: 2,),
            Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color:const Color(0xff5DACBD)
              ),
            ),
            const SizedBox(width: 2,),
            Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color:const Color(0xff5DACBD)
              ),
            ),
            const SizedBox(width: 2,),
            Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color:const Color(0xff5DACBD)
              ),
            ),


          ],
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
         height: 60.h,
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.secondaryColor),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.sp),
                    topRight: Radius.circular(20.sp))),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 2.w,
              ),
              child: RawScrollbar(
                trackRadius:
                    const Radius.circular(RadiusConstants.borderRadius20),
                thickness: 1.2.w,
                trackVisibility: true,
                // thumbVisibility: true,
                thumbColor: AppColors.secondaryColor,
                trackColor: AppColors.secondaryColor.withOpacity(0.4),
                radius: const Radius.circular(RadiusConstants.borderRadius20),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: ListView(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Gap(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 45.w,
                                child: Text(
                                  'Round toe leather loafer shoe(Black)',
                                  style: AppTextStyles.poppinsB3,
                                ),
                              ),
                              SizedBox(
                                width: 40.w,
                                child: Row(
                                  children: [

                                    const Icon(
                                      Icons.favorite_border,
                                      color: Colors.red,
                                    ),
                                    Text(
                                      " Add to my wishlist",
                                      style: TextStyle(fontSize: 12.3, fontWeight: FontWeight.w500, color: Colors.black),
                                      // style: AppTextStyles.poppinsB3,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Gap(),
                          RichText(
                              text: TextSpan(children: <TextSpan>[
                            TextSpan(
                                text: 'Brand - ',
                                style: AppTextStyles.hintText),
                            TextSpan(
                                text: 'RFO', style: AppTextStyles.poppinsB4),
                          ])),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                  text: TextSpan(children: <TextSpan>[
                                TextSpan(
                                    text: 'Occasion  ',
                                    style: AppTextStyles.hintText),
                                TextSpan(
                                    text: 'Sports',
                                    style: AppTextStyles.poppinsB4),
                              ])),
                              RichText(
                                  text: TextSpan(children: <TextSpan>[
                                TextSpan(
                                    text: 'Color  ',
                                    style: AppTextStyles.hintText),
                                TextSpan(
                                    text: 'Red',
                                    style: AppTextStyles.poppinsB4),
                              ])),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                  text: TextSpan(children: <TextSpan>[
                                TextSpan(
                                    text: 'Size  ',
                                    style: AppTextStyles.hintText),
                                TextSpan(
                                    text: '12', style: AppTextStyles.poppinsB4),
                              ])),
                              RichText(
                                  text: TextSpan(children: <TextSpan>[
                                TextSpan(
                                    text: 'Type  ',
                                    style: AppTextStyles.hintText),
                                TextSpan(
                                    text: "Running Shoes, Women's Shoes",
                                    style: AppTextStyles.poppinsB4),
                              ])),
                            ],
                          ),
                          const Gap(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    " 58.30",
                                    style: AppTextStyles.poppinsB3,
                                  ),
                                  Text(
                                    " 65.12",
                                    style: AppTextStyles.hintText,
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 5.h,
                                    width: 25.w,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(width: 1,color: Colors.green.withOpacity(0.5))
                                    ),
                                    child:  Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        InkWell(
                                            onTap:(){
                                              setState(() {
                                                if(number == 1){
                                                }
                                                else
                                                  {
                                                    number--;
                                                  }

                                              });
                                            } ,
                                            child: const Icon(Icons.remove,size: 18,)),
                                        Text(number.toString(),style: const TextStyle(fontSize: 13),),
                                        InkWell(
                                            onTap:(){
                                              setState(() {
                                                number++;
                                              });
                                            } ,
                                            child: const Icon(Icons.add,size: 18,))
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 10,),
                                  CustomGradientButton(
                                      height: 5.h,
                                      onTap: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => const InquiryForm(),));
                                      },
                                      text: 'Inquiry Now',
                                      inProgress: false)
                                ],
                              ),

                            ],
                          ),
                          const Gap(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Choose Variant',
                                style: AppTextStyles.poppinsB3
                                    .copyWith(color: AppColors.secondaryColor),
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    height: 3.h,
                                    width: 10.w,
                                    child: Image.asset(
                                      "assets/temp/product_item.png",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  const Gap(),
                                  SizedBox(
                                    height: 3.h,
                                    width: 10.w,
                                    child: Image.asset(
                                      "assets/temp/product_item.png",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const Gap(),
                          Row(
                            children: [
                              const CustomSvg(svgPath: Assets.locationIcon),
                              Text(
                                'Ahmedabad',
                                style: AppTextStyles.poppinsB3,
                              ),
                            ],
                          ),
                          Gap(
                            height: 0.5.h,
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) =>const ProductManage(),));
                            },
                            child: Text(
                              'Round toe leather loafer shoe(Black)',
                              style: AppTextStyles.poppinsB3,
                            ),
                          ),
                          Gap(
                            height: 0.5.h,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Text(
                                '3.0(52 REVIEWS)',
                                style: AppTextStyles.hintText,
                              )
                            ],
                          ),
                          Gap(
                            height: 0.5.h,
                          ),
                          SizedBox(
                            width: 70.w,
                            child: const Text(
                                'This pack contains a technical spec drawing is a fully detailed shoe design ready for your creative touch,technical spec drawing is a fully detailed shoe design ready for your creative touch.. ',
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis),
                          ),
                          const Gap(),
                          const MySpecification(),
                          const MyBottomField(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
