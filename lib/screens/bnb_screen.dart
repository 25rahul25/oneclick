import 'package:flutter/material.dart';
import 'package:one_click/values/color_constant.dart';
import 'package:one_click/values/radius_constant.dart';
import 'package:one_click/screens/business_leads_screen.dart';
import 'package:one_click/screens/home_screen.dart';
import 'package:one_click/screens/news_screen.dart';
import 'package:one_click/screens/other_screen.dart';
import 'package:one_click/screens/personal_details_screen/view_post_screen.dart';
import 'package:one_click/values/assets.dart';
import 'package:one_click/widgets/custom_svg.dart';
import 'package:one_click/widgets/square_wrapper.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:sizer/sizer.dart';

class BnbScreen extends StatefulWidget {
  const BnbScreen({Key? key}) : super(key: key);

  @override
  State<BnbScreen> createState() => BnbScreenState();
}

class BnbScreenState extends State<BnbScreen> {
  PersistentTabController controller = PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView.custom(
      context,
      hideNavigationBar: false,
      onWillPop: (context) async => false,
      controller: controller,
      screens: buildScreens(),
      itemCount: buildScreens().length,
      confineInSafeArea: true,
      backgroundColor: AppColors.whiteColor,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: false,
      stateManagement: true,
      customWidget: CustomNavBarWidget(
        _navBarsItems(),
        onItemSelected: (final index) {
          setState(() {
            controller.index = index;
          });
        },
        selectedIndex: controller.index,
      ),
      hideNavigationBarWhenKeyboardShows: true,
    );
  }
}

List<Widget> buildScreens() {
  return const [
    HomeScreen(),
    ViewPostScreen(),
    BusinessLeadsScreen(),
    NewsScreen(),
    OtherScreen(),
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      // activeColorPrimary: AppColors.buttonPrimaryColor,
      icon: CustomSvg(
        svgPath: Assets.homeActiveIcon,
        height: 20.sp,
      ),
      inactiveIcon: const CustomSvg(
        svgPath: Assets.homeIcon,
      ),
    ),
    PersistentBottomNavBarItem(
      // activeColorPrimary: AppColors.buttonPrimaryColor,
      icon: CustomSvg(
        svgPath: Assets.brief,
        height: 20.sp,
      ),
      inactiveIcon: const CustomSvg(svgPath: Assets.brief),
    ),
    PersistentBottomNavBarItem(
      // activeColorPrimary: AppColors.buttonPrimaryColor,
      icon: CustomSvg(
        svgPath: Assets.database,
        height: 20.sp,
      ),
      inactiveIcon: const CustomSvg(svgPath: Assets.database),
    ),
    PersistentBottomNavBarItem(
      // activeColorPrimary: AppColors.buttonPrimaryColor,
      icon: CustomSvg(
        svgPath: Assets.news,
        height: 20.sp,
      ),
      inactiveIcon: const CustomSvg(svgPath: Assets.news),
    ),
    PersistentBottomNavBarItem(
      // activeColorPrimary: AppColors.buttonPrimaryColor,
      icon: CustomSvg(
        svgPath: Assets.more,
        height: 20.sp,
      ),
      inactiveIcon: const CustomSvg(svgPath: Assets.more),
    ),
  ];
}

class CustomNavBarWidget extends StatelessWidget {
  const CustomNavBarWidget(
    this.items, {
    Key? key,
    required this.selectedIndex,
    required this.onItemSelected,
  }) : super(key: key);
  final int selectedIndex;
  final List<PersistentBottomNavBarItem> items;
  final ValueChanged<int> onItemSelected;

  Widget _buildItem(
          final PersistentBottomNavBarItem item, final bool isSelected) =>
      Container(
        alignment: Alignment.center,
        height: kBottomNavigationBarHeight,
        color: Colors.transparent,
        child: IconTheme(
          data: IconThemeData(
              size: 26,
              color: isSelected
                  ? (item.activeColorSecondary ?? item.activeColorPrimary)
                  : item.inactiveColorPrimary ?? item.activeColorPrimary),
          child: isSelected ? item.icon : item.inactiveIcon ?? item.icon,
        ),
      );

  @override
  Widget build(final BuildContext context) => SquareWrapper(
        isShadow: true,
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(RadiusConstants.borderRadius20),
              topRight: Radius.circular(RadiusConstants.borderRadius20),
            ),
          ),
          child: Stack(
            children: [
              SizedBox(
                width: 100.w,
                height: double.infinity,
                child: const CustomSvg(
                    svgPath: Assets.bnbBackground, fit: BoxFit.cover),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: items.map((final item) {
                  final int index = items.indexOf(item);
                  return GestureDetector(
                    onTap: () {
                      onItemSelected(index);
                    },
                    child: _buildItem(item, selectedIndex == index),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      );
}
