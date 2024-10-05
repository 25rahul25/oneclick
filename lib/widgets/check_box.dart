import 'package:flutter/material.dart';
import 'package:one_click/values/color_constant.dart';
import 'package:one_click/utils/ui/app_text_style.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({
    super.key,
    required this.text,
    required this.value,
    required this.onChangedValue,
  });

  final String text;
  final bool value;
  final void Function(
    bool? value,
  ) onChangedValue;

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool? value;

  @override
  void initState() {
    super.initState();
    value = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: (bool? onChange) {
            setState(() {
              value = onChange;
            });
            widget.onChangedValue.call(
              value,
            );
          },
          fillColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            return AppColors.primaryColor;
          }),
        ),
        Text(
          widget.text,
          style: AppTextStyles.hintText,
        ),
      ],
    );
  }
}
