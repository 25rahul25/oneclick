// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:one_click/screens/category_screen_second.dart';
import 'package:one_click/screens/grid_all_product_screen.dart';
import 'package:one_click/screens/list_business_screen/set_Timmer.dart';
import 'package:one_click/screens/notification_screen.dart';
import 'package:one_click/screens/profile_screen.dart';
import 'package:one_click/values/assets.dart';
import 'package:one_click/utils/ui/app_text_style.dart';
import 'package:one_click/utils/ui/cutom_listview/custom_categories.dart';
import 'package:one_click/widgets/custom_icon_button.dart';
import 'package:one_click/widgets/custom_svg.dart';
import 'package:one_click/widgets/custom_text_field.dart';
import 'package:one_click/widgets/custom_text_with_background.dart';
import 'package:one_click/widgets/gap.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _BuildBody(),
      ),
    );
  }
}

class _BuildBody extends StatelessWidget {
  List<Image>  categry = [
    Image.asset(
      'assets/temp/category_demo.png',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/temp/Apparel.png',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/temp/AutoMobile.png',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/temp/category_demo.png',
      fit: BoxFit.cover,
      height: 75,
    ),
  ];
  List<Image> rent = [
    Image.asset(
      'assets/temp/cars.jpg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/temp/cloth.jpg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/temp/furniture.jpg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/temp/applianse.webp',
      fit: BoxFit.cover,
      height: 75,
    ),
  ];
  List<Image> oc = [
    Image.asset(
      'assets/temp/WM repair.png',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/temp/TV repair.png',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/temp/Pest control service.png',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/temp/Electrician.png',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/temp/AC repair.png',
      fit: BoxFit.cover,
    ),
  ];
  List<String> categories = [
    "Agriculture",
    "Apperal",
    "Automobilea &\nTwo wheelers",
    "Agriculture"
  ];
  List<String> rents = [
    "Rent Car",
    "Rent Cloth",
    "Rent Furniture",
    "Rent Appliance"
  ];

  _BuildBody({Key? key}) : super(key: key);
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(height: 0.5.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ProfileScreen(),
                    ),
                  );
                },
                child: CircleAvatar(
                  radius: 18.sp,
                  backgroundImage:
                      const AssetImage("assets/temp/dummy_profile_image.png"),
                ),
              ),
              const CustomSvg(svgPath: Assets.logo),
              CustomIconButton(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const NotificationScreen(),
                    ),
                  );
                },
                svgPath: Assets.notificationIcon,
              ),
            ],
          ),
        ),
        const Gap(),
        Expanded(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 2.w),
            child: Column(
              children: [
                CustomTextField(
                  prefixIcon: CustomSvg(
                    padding: EdgeInsets.symmetric(horizontal: 3.w),
                    svgPath: Assets.searchIcon,
                  ),
                  hintText: 'Search for a Restorent',
                  suffix:SizedBox(
                    width: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap:(){},
                          child: CustomSvg(
                              padding: EdgeInsets.symmetric(horizontal: 2.w),
                              svgPath: Assets.homeLense),
                        ),
                        InkWell(
                          onTap: (){},
                          child: CustomSvg(
                              padding: EdgeInsets.symmetric(horizontal: 2.w),
                              svgPath: Assets.micIcon),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 8,),
                Image.asset("assets/temp/demo_banner.png"),
                const SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 120,
                      height: 30,
                      child:CustomTextWithBackground(text: 'Categories'),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const CategoryScreenSecond(),));
                      },
                      child: Text(
                        'View all  ',
                        style: AppTextStyles.hintText2,
                      ),
                    ),
                  ],
                ),
                  SizedBox(height: 2.h,),
                  SizedBox(
                    height: 125,
                    width: MediaQuery.of(context).size.width,
                    child:
                    ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categry.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: (){
                            if(index==0){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const SetTimer(),));
                            }else if(index==1){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const GridAllProductScreen(),));
                            }
                          },
                          child:CustomCategories(widget: categry[index],text: categories[index],height: 70,width: 72,)
                        );
                      },
                    ),
                  ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow:[
                      BoxShadow(
                          color: Colors.grey.shade400,
                        blurRadius: 4,
                        offset: Offset.fromDirection(BorderSide.strokeAlignOutside)
                      )
                    ]
                  ),
                  child: Stack(
                      children: [
                        SizedBox(
                          height: 130,
                          width: MediaQuery.of(context).size.width,
                          child:  ClipRRect(
                              borderRadius: BorderRadius.circular(11),
                              child: Image.asset("assets/temp/bannert.jpg",fit: BoxFit.cover,)),
                        ),
                        const Positioned(
                          top: 14,
                            left: 19,
                            child: Text("Talk to doctor\ninstantly",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),))
                      ]),
                ),
               const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [Container(
                        height: 80,
                        width: 85,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)
                        ),
                       child: ClipRRect(
                         borderRadius: BorderRadius.circular(10),
                         child: Image.asset(
                           'assets/temp/booking.jpg',fit: BoxFit.cover,
                         ),
                       ),
                      ),
                        const  Positioned(
                          left: 2,
                          bottom: 10,
                            child: Text("Book Flight",style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.w600),))
                      ]
                    ),
                    Stack(
                      children: [Container(
                        height: 80,
                        width: 85,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/temp/jio.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                        const  Positioned(
                            left: 2,
                            bottom: 10,
                            child: Text("jio",style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.w600),))
                      ]
                    ),
                    Stack(
                      children:[ Container(
                        height: 80,
                        width: 85,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/temp/orderfood.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                        const Positioned(
                            left: 2,
                            bottom: 10,
                            child: Text("Order Food",style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.w600),))
                      ]
                    ),
                    Stack(
                      children:[ Container(
                        height: 80,
                        width: 85,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child:  ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/temp/paybill.png',
                            fit: BoxFit.cover,
                            height: 75,
                          ),
                        ),
                      ),
                        const Positioned(
                            left: 2,
                            bottom: 10,
                            child: Text("Pay bills",style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.w600),))
                      ]
                    ),
                  ]
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height:50,
                      width: 100,
                      child: Image.asset(
                        'assets/temp/OC Experts.png',
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'View all',
                        style: AppTextStyles.hintText2,
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 160,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: oc.length,
                      itemBuilder: (context, index) {
                        return Container(
                            margin:const EdgeInsets.symmetric(horizontal: 8),
                          height: 120,
                          width: 125,
                          child:ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: oc[index],
                          )
                        );
                      },
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Automobile",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'View all',
                        style: AppTextStyles.hintText2,
                      ),
                    ),
                  ],
                ),

                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                          children: [Container(
                            height: 120,
                            width:180,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/temp/new.jpg',fit: BoxFit.cover,
                              ),
                            ),
                          ),
                            const  Positioned(
                                left: 8,
                                bottom: 10,
                                child: Text("New Car",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.w600),))
                          ]
                      ),
                      Stack(
                          children: [Container(
                            height: 120,
                            width: 180,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/temp/used.jpg',fit: BoxFit.cover,
                              ),
                            ),
                          ),
                            const  Positioned(
                                left: 9,
                                bottom: 10,
                                child: Text("Used Car",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.w600),))
                          ]
                      ),
                    ]
                ),
                const SizedBox(height: 8,),

                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                          children: [Container(
                            height: 120,
                            width:180,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/temp/sell.jpg',fit: BoxFit.cover,
                              ),
                            ),
                          ),
                            const  Positioned(
                                left: 8,
                                bottom: 10,
                                child: Text("Sell Car",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.w600),))
                          ]
                      ),
                      Stack(
                          children: [Container(
                            height: 120,
                            width: 180,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/temp/bike.jpg',fit: BoxFit.cover,
                              ),
                            ),
                          ),
                            const  Positioned(
                                left: 9,
                                bottom: 10,
                                child:  Text("Used Car",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.w600),))
                          ]
                      ),
                    ]
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   const Text("Rent & Hire",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'View all',
                        style: AppTextStyles.hintText2,
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: rent.length,
                    itemBuilder: (context, index) {
                      return CustomCategories(widget: rent[index], text: rents[index],height: 110,width: 115,);
                    },
                  ),
                )

                
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class BuildOffers extends StatelessWidget {
  const BuildOffers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        4,
        (index) => Container(
          height: 12.h,
          width: 20.w,
          margin: EdgeInsets.symmetric(horizontal: 2.w),
          padding: EdgeInsets.symmetric(horizontal: 2.w),
          alignment: Alignment.bottomLeft,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/temp/offer_demo.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Text('Offer', style: AppTextStyles.openSansB2),
        ),
      ),
    );
  }
}

class BuildOcExpert extends StatelessWidget {
  const BuildOcExpert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CustomSvg(svgPath: Assets.ocExpert),
            Text("View all", style: AppTextStyles.hintText2),
          ],
        ),
        SizedBox(
          height: 15.h,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Image.asset("assets/temp/repair_demo.png");
            },
          ),
        )
      ],
    );
  }
}
