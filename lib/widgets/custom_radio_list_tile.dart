import 'package:flutter/material.dart';
import 'package:one_click/values/color_constant.dart';
import 'package:one_click/widgets/gap.dart';

// class CustomRadioListTile<T> extends StatelessWidget {
//   const CustomRadioListTile(
//       {Key? key,
//       this.title,
//       this.subtitle,
//       required this.value,
//       required this.groupValue,
//       required this.onChangedValue,
//       this.padding,  this.tileColor})
//       : super(key: key);
//   final String? title;
//   final String? subtitle;
//   final T value;
//   final T groupValue;
//   // final void Function(
//   //   String? selectedItem,
//   // ) onChangedValue;
//   final ValueChanged<T> onChanged;
//   final EdgeInsets? padding;
//   final Color? tileColor;
//
//   @override
//   Widget build(BuildContext context) {
//     return RadioListTile(
//       tileColor: tileColor,
//       contentPadding: padding,
//       subtitle: Text(subtitle!),
//       title: Text(title!),
//       value: value,
//       groupValue: groupValue,
//       onChanged: onChanged,
//           // (String? value) {
//         // onChangedValue.call(
//         //   value,
//         // );
//       // },
//     );
//   }
// }
class CustomRadioListTile<T> extends StatelessWidget {
  final T value;
  final T groupValue;
  final ValueChanged<T> onChanged;
  final double width;
  final double height;


  const CustomRadioListTile(
      {super.key,
      required this.value,
      required this.groupValue,
      required this.onChanged,
      this.width = 32,
      this.height = 32,
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          onChanged(value);
        },
        child: Row(
          children: [
            Container(
              height: height,
              width: width,
              decoration: ShapeDecoration(
                shape: const CircleBorder(),
                gradient: LinearGradient(
                  colors: [
                    AppColors.secondaryColor,
                    AppColors.primaryColor,
                  ],
                ),
              ),
              child: Center(
                child: Container(
                  height: height - 8,
                  width: width - 8,
                  decoration: ShapeDecoration(
                    shape: const CircleBorder(),
                    gradient: LinearGradient(
                      colors:  value == groupValue
                          ? [
                              AppColors.secondaryColor,
                              AppColors.primaryColor,
                            ]
                          : [
                              Theme.of(context).scaffoldBackgroundColor,
                              Theme.of(context).scaffoldBackgroundColor,
                            ],
                    ),
                  ),
                ),
              ),
            ),
            const Gap(),
            Text(value.toString()),
          ],
        ),
      ),
    );
  }
}
