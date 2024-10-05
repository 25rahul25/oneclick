import 'package:one_click/values/assets.dart';

class OptionEntity {
  final String svgPath;
  final String text;

  OptionEntity({
    required this.svgPath,
    required this.text,
  });
}

List<OptionEntity> optionList = [
  OptionEntity(
    svgPath: Assets.globalIcon,
    text: 'Personal Details',
  ),
  OptionEntity(
    svgPath: Assets.editIconOption,
    text: 'Address',
  ),
  OptionEntity(
    svgPath: Assets.helpIcon,
    text: 'Family & Friends',
  ),
  OptionEntity(
    svgPath: Assets.externalShareIcon,
    text: 'List a Business',
  ),
  OptionEntity(
    svgPath: Assets.favouriteIcon,
    text: 'Favourite',
  ),
  OptionEntity(
    svgPath: Assets.gloryList,
    text: 'My Glory List',
  ),
  OptionEntity(
    svgPath: Assets.pharmacyListUserIcon,
    text: 'My Pharmacy List',
  ),
  OptionEntity(
    svgPath: Assets.favouriteIcon,
    text: 'Favourite',
  ),
  OptionEntity(
    svgPath: Assets.gloryList,
    text: 'My Glory List',
  ),
  OptionEntity(
    svgPath: Assets.pharmacyListUserIcon,
    text: 'My Pharmacy List',
  ),
  OptionEntity(
    svgPath: Assets.favouriteIcon,
    text: 'Favourite',
  ),
  OptionEntity(
    svgPath: Assets.gloryList,
    text: 'My Glory List',
  ),
  OptionEntity(
    svgPath: Assets.pharmacyListUserIcon,
    text: 'My Pharmacy List',
  ),
];
