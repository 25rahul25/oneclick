import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:one_click/values/color_constant.dart';
import 'package:one_click/values/assets.dart';
import 'package:one_click/utils/ui/app_text_style.dart';
import 'package:one_click/widgets/custom_appbar.dart';
import 'package:one_click/widgets/custom_icon_button.dart';
import 'package:one_click/widgets/custom_svg.dart';
import 'package:one_click/widgets/custom_text_with_background.dart';
import 'package:one_click/widgets/gap.dart';
import 'package:sizer/sizer.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Align(
            alignment: Alignment.center,
            child: CustomSvg(svgPath: Assets.logo)),
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
      body: ListView(
          physics: const BouncingScrollPhysics(),
          children: const [_BuildBody()]),
    );
  }
}

class _BuildBody extends StatelessWidget {
  const _BuildBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(),
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: "You ",
                style: AppTextStyles.poppinsB1
                    .copyWith(color: AppColors.primaryColor)),
            TextSpan(
                text: "need",
                style: AppTextStyles.poppinsB1
                    .copyWith(color: AppColors.secondaryColor)),
          ])),
          CustomTextWithBackground(
            text: "to explore today",
            textStyle: AppTextStyles.poppinsB1
                .copyWith(color: AppColors.secondaryColor),
          ),
          const Gap(),
          const _BuildNews(),
          const _BuildBottom(),
        ],
      ),
    );
  }
}

class _BuildNews extends StatefulWidget {
  const _BuildNews({Key? key}) : super(key: key);

  @override
  State<_BuildNews> createState() => _BuildNewsState();
}

class _BuildNewsState extends State<_BuildNews> with TickerProviderStateMixin {
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
      child: Row(
        children: [
          RotatedBox(
            quarterTurns: 3,
            child: SizedBox(
              width: 80.w,
              height: 4.h,
              child: TabBar(
                controller: tabController,
                // padding: EdgeInsets.zero,
                isScrollable: false,
                onTap: (int? value) => setState(() {}),
                indicatorColor: Colors.transparent,
                indicatorPadding: EdgeInsets.zero,
                labelPadding: EdgeInsets.only(right: 5.sp),
                tabs: [
                  Tab(
                    child: customTab(
                      text: "Trending",
                      index: 0,
                      currentIndex: tabController.index,
                    ),
                  ),
                  Tab(
                    child: customTab(
                      text: "Briefs",
                      index: 1,
                      currentIndex: tabController.index,
                    ),
                  ),
                  Tab(
                    child: customTab(
                      text: "for you",
                      index: 2,
                      currentIndex: tabController.index,
                    ),
                  ),
                  Tab(
                    child: customTab(
                      text: "explore",
                      index: 3,
                      currentIndex: tabController.index,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            child: SizedBox(
              height: 39.h,
              child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                controller: tabController,
                children: const [
                  ImageSlider(),
                  SizedBox(
                    child: Text("bs"),
                  ),
                  SizedBox(
                    child: Text("4ss"),
                  ),
                  SizedBox(
                    child: Text("5ss"),
                  ),
                ],
              ),
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
      padding: EdgeInsets.symmetric(horizontal: 1.w),
      alignment: Alignment.centerLeft,
      // height: 6.h,
      width: 30.w,
      decoration:
          index == currentIndex ? const BoxDecoration() : const BoxDecoration(),
      child: Text(text,
          style: index == currentIndex
              ? AppTextStyles.poppinsB3
                  .copyWith(color: AppColors.secondaryColor)
              : AppTextStyles.poppinsB3.copyWith(color: AppColors.hintColor)),
    );
  }
}

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ImageSliderState();
  }
}

class _ImageSliderState extends State<ImageSlider> {
  final CarouselController _controller = CarouselController();

  @override
  void initState() {
    super.initState();
  }

  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          CarouselSlider.builder(
            itemCount: imgList.length,
            options: CarouselOptions(
                enlargeCenterPage: true,
                height: 39.h,
                autoPlay: true,
                viewportFraction: 0.55),
            carouselController: _controller,
            itemBuilder: (context, index, realIndex) {
              return Stack(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    imgList[index],
                    fit: BoxFit.fill,
                    width: 60.w,
                    height: 39.h,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Opacity(
                    opacity: 0.8,
                    child: Image.asset(
                      "assets/temp/shadow.png",
                      fit: BoxFit.fill,
                      width: 60.w,
                      height: 39.h,
                    ),
                  ),
                ),

                // Align(
                //   alignment :  Alignment.bottomRight,
                //   child: Container(
                //     decoration: BoxDecoration(
                //       image: DecorationImage(
                //         image: AssetImage(
                //           "assets/temp/shadow.png",
                //         ),
                //       ),
                //     ),
                //     // child: Image.asset(
                //     //   "assets/temp/shadow.png",
                //     //   fit: BoxFit.fill,
                //     //   width: 60.w,
                //     //   height: 39.h,
                //   ),
                // ),

                Padding(
                  padding: EdgeInsets.all(5.sp),
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "INDIA vs NZ Ind vs NZ 1st ODI: Latham, Williamson deflate India in New Zealand's massive win",
                        style: AppTextStyles.poppinsB1
                            .copyWith(color: Colors.white),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 7,
                      )),
                )
              ]);
            },
          ),
        ],
      ),
    )
    );
  }
}

class _BuildBottom extends StatelessWidget {
  const _BuildBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(),
        Row(
          children: [
            Text(
              "Top",
              style: AppTextStyles.poppinsB1
                  .copyWith(color: AppColors.secondaryColor),
            ),
            const CustomTextWithBackground(text: " Collection")
          ],
        ),
        const Gap(),
        ListView.builder(
          shrinkWrap: true,
          physics: const ScrollPhysics(parent: null),
          itemCount: 5,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Image.asset(
                  "assets/temp/offer_demo.png",
                  height: 8.h,
                  width: 20.w,
                ),
                const Gap(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "TOI",
                      style: AppTextStyles.poppinsB3,
                    ),
                    SizedBox(
                        width: 70.w,
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolor.',
                          style: AppTextStyles.hintText3,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ))
                  ],
                )
              ],
            );
          },
        )
      ],
    );
  }
}
