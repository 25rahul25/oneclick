import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBar({
    Key? key,
     required this.title,
     this.leading,
     this.actions = const [],
     this.centerTitle,
     this.elevation,
  }) : super(key: key);
  final Widget title;
  final Widget? leading;
  final List<Widget> actions;
  final bool? centerTitle;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight),
      child: AppBar(
        title: title,
        leading: leading,
        actions: actions,
        centerTitle: centerTitle,
        elevation: elevation ?? 0,
        backgroundColor: Colors.transparent,
      ),
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
