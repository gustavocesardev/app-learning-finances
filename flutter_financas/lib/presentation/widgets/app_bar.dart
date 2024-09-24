import 'package:flutter/material.dart';
import 'package:flutter_financas/presentation/themes/colors_constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {

  final String title;

  const CustomAppBar({
    super.key,
    this.title = 'Learning Finances'
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorConstants.primaryColor,
      title: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: ColorConstants.thirdColor,
            fontWeight: FontWeight.bold
          ),
        ),
      )
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class DesafioAppBar extends StatelessWidget implements PreferredSizeWidget {

  final String title;

  const DesafioAppBar({
    super.key,
    this.title = 'Learning Finances'
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorConstants.primaryColor,
      title:  Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: ColorConstants.thirdColor,
            fontWeight: FontWeight.bold
          ),
      ),
      iconTheme: const IconThemeData(
        color: ColorConstants.thirdColor
      ),
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}