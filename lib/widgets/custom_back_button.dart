import 'package:flutter/cupertino.dart';
import 'package:one_click/values/radius_constant.dart';
import 'package:one_click/values/assets.dart';
import 'package:one_click/widgets/custom_icon_button.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    Key? key,
    this.svgPath,
    this.padding,
  }) : super(key: key);
  final String? svgPath;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return CustomIconButton(
      onTap: () => Navigator.of(context).pop(),
      svgPath: svgPath ?? Assets.backArrow,
      padding: padding ?? const EdgeInsets.all(RadiusConstants.borderRadius12),
    );
  }
}
