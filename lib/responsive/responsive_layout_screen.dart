import "package:flutter/material.dart";
import "package:flutter_insta_clone/utils/dimensions.dart";

class ResponsiveLayout extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;

  const ResponsiveLayout(
      {Key? key,
      required this.webScreenLayout,
      required this.mobileScreenLayout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Создание адаптивного макета
    return LayoutBuilder(builder: (context, constraints) {
      //Если текущая ширина экрана больше заданной, значит экран - Веб
      if (constraints.maxWidth > webScreenSize) {
        // веб экран
        return webScreenLayout;
      }
      // мобильный экран
      return mobileScreenLayout;
    });
  }
}
