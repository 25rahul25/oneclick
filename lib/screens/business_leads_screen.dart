import 'package:flutter/material.dart';
import 'package:one_click/values/color_constant.dart';
import 'package:one_click/values/radius_constant.dart';
import 'package:one_click/values/assets.dart';
import 'package:one_click/utils/ui/app_text_style.dart';
import 'package:one_click/widgets/custom_appbar.dart';
import 'package:one_click/widgets/custom_drop_down_button2.dart';
import 'package:one_click/widgets/custom_svg.dart';
import 'package:one_click/widgets/gap.dart';
import 'package:sizer/sizer.dart';

class BusinessLeadsScreen extends StatelessWidget {
  const BusinessLeadsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: CustomAppBar(
        actions: const[
          CustomSvg(
            svgPath: Assets.rightBackArrow,height: 30,
            padding: EdgeInsets.all(RadiusConstants.borderRadius12),
          ),
        ],
        title: CustomDropDownButton2(
          hintText: 'WebEarl(income tax)',
          width: 60.w,
          isStyle: true,
          isUnderLine: false,
          itemList:const [],
          onChangedValue: (String? selectedItem) {},
        ),
        leading: const CustomSvg(
          svgPath: Assets.backArrow,
          padding: EdgeInsets.all(RadiusConstants.borderRadius12),
        ),
      ),
      body:  const SingleChildScrollView(child: _BuildBody()),
    );
  }
}

class _BuildBody extends StatelessWidget {
  const _BuildBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        _BuildBottom(),
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
    tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Column(
        children: [
          SizedBox(
            height: 6.h,
            child: TabBar(
              controller: tabController,
              isScrollable: true,
              onTap: (int? value) => setState(() {}),
              indicatorColor: Colors.transparent,
              //indicatorPadding: EdgeInsets.zero,
              tabs: [
                Tab(
                  child: customTab(
                    text: "  Leads",
                    index: 0,
                    currentIndex: tabController.index,
                  ),
                ),
                Tab(
                  child: customTab(
                    text: "  My leads",
                    index: 1,
                    currentIndex: tabController.index,
                  ),
                ),
                Tab(
                  child: customTab(
                    text: "  Passbook",
                    index: 2,
                    currentIndex: tabController.index,
                  ),
                ),
                Tab(
                  child: customTab(
                    text: "  Analytics",
                    index: 3,
                    currentIndex: tabController.index,
                  ),
                ),
                Tab(
                  child: customTab(
                    text: "  Loremipsum",
                    index: 4,
                    currentIndex: tabController.index,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 81.h,
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: tabController,
              children: const [
                _BuildBottom2(),
                SizedBox(
                  child: Text("ss"),
                ),
                SizedBox(
                  child: Text("ss"),
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
      padding: EdgeInsets.symmetric(horizontal: 2.w),
      alignment: Alignment.centerLeft,
      height: 6.h,
      decoration: index == currentIndex
          ? const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.leadsIcon),
                alignment: Alignment.centerLeft,
              ),
              // borderRadius: BorderRadius.circular(
              //   RadiusConstants.borderRadius35,
              // ),
            )
          : const BoxDecoration(),
      child: Text(text,
          style: index == currentIndex
              ? AppTextStyles.poppinsB2
                  .copyWith(color: AppColors.secondaryColor)
              : AppTextStyles.poppinsB2.copyWith(color: AppColors.hintColor)),
    );
  }
}

class _BuildBottom2 extends StatefulWidget {
  const _BuildBottom2({Key? key}) : super(key: key);

  @override
  State<_BuildBottom2> createState() => _BuildBottom2State();
}

class _BuildBottom2State extends State<_BuildBottom2>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
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
              tabs: [
                Tab(
                  child: customTab(
                    text: "  All leads(495)",
                    index: 0,
                    currentIndex: tabController.index,
                  ),
                ),
                Tab(
                  child: customTab(
                    text: "  New",
                    index: 1,
                    currentIndex: tabController.index,
                  ),
                ),
                Tab(
                  child: customTab(
                    text: "  Checked leads",
                    index: 2,
                    currentIndex: tabController.index,
                  ),
                ),

              ],
            ),
          ),
          SizedBox(
            height: 72.h,
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: tabController,
              children: const [
                AllLeads(),
                SizedBox(
                  child: Text("ss"),
                ),
                SizedBox(
                  child: Text("4ss"),
                ),

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
      padding: EdgeInsets.symmetric(horizontal: 2.w),
      alignment: Alignment.centerLeft,
      height: 6.h,
      decoration: index == currentIndex
          ? const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.newNotificationIcon),
                alignment: Alignment.topRight,
              ),
              // borderRadius: BorderRadius.circular(
              //   RadiusConstants.borderRadius35,
              // ),
            )
          : const BoxDecoration(),
      child: Text(text,
          style: index == currentIndex
              ? AppTextStyles.poppinsB2
                  .copyWith(color: AppColors.secondaryColor)
              : AppTextStyles.poppinsB2.copyWith(color: AppColors.hintColor)),
    );
  }
}

class _CustomListView extends StatelessWidget {
  const _CustomListView({Key? key, required this.isImage}) : super(key: key);
  final bool isImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),

          child: ListView.builder(
            shrinkWrap: true,
            physics: const ScrollPhysics(parent: null),
            itemCount: 4,
            itemBuilder: (context, index) {
              return Stack(
                children:[ Center(
                  child: Container(
                    height: 214,
                    width: 360,
                   margin:const EdgeInsets.symmetric(vertical: 10),
                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(12),
                     boxShadow: const [
                       BoxShadow(
                         color: Colors.grey,
                         spreadRadius: 2,
                         blurRadius: 4,
                         blurStyle: BlurStyle.outer
                       )
                     ]
                   ),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            isImage ? Image.asset(Assets.newNotificationIcon) :const Text(''),
                            Container(
                                width: 80.w,
                                padding: EdgeInsets.only(left: 3.w),
                                child: const Text(
                                  "Internet Website Developer",
                                  style: TextStyle(fontSize: 19,fontWeight: FontWeight.w600),
                                )),
                            Container(
                                padding: EdgeInsets.only(left: 3.w),
                                width: 85.w,
                                child:const Text(
                                  "Enquired for internet website developers, kindly send me price and other details.",
                                  style: TextStyle(fontSize: 14,color: Colors.grey,fontWeight: FontWeight.w500),
                                )),
                            const Gap(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    CustomSvg(
                                        svgPath: Assets.locationIcon,height: 15,
                                        padding: EdgeInsets.only(left: 3.w)),
                                    const Text(
                                      'Ahmedabad',
                                      style: TextStyle(fontSize: 15),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Get This Lead ',
                                      style: TextStyle(color: AppColors.secondaryColor,fontSize: 15,fontWeight: FontWeight.w600),
                                    ),
                                    CustomSvg(
                                      svgPath: Assets.rightBackArrow,height: 18,
                                      padding: EdgeInsets.only(right: 3.w),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Gap(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                  Positioned(
                      right:0,
                      top: 0,
                      child:
                      Container(
                        height: 40,
                        width: 40,
                        padding:const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              spreadRadius: 1,
                              blurRadius: 3
                            )
                          ],
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child:Image.asset("assets/temp/phone-call.png"),
                      ),
                      //
                  )
              ]
              );

            },
          ),
        ),
        const SizedBox(height: 10,),
      ],
    );
  }
}

class AllLeads extends StatelessWidget {
  const AllLeads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _CustomListView(
            isImage: true,
          ),
          Padding(
            padding:  EdgeInsets.only(left: 3.w),
            child: Text(
              'Checked leads',
              style: AppTextStyles.poppinsB2.copyWith(
                color: AppColors.secondaryColor,
              ),
            ),
          ),
          const _CustomListView(
            isImage: false,
          ),
        ],
      ),
    );
  }
}
