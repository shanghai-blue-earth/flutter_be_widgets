import 'package:flutter/material.dart';

import 'be_app_bar.dart';

class BEScaffold extends StatelessWidget {
  final String title;
  final List<Widget>? actions;
  final PreferredSizeWidget? appBarBottom;
  final BEAppBarStyle style;
  final Color? bgColor;
  final String? bgImage;
  final String? bgImagePackage;
  final Widget? endDrawer;
  final Widget? body;
  final Widget? bottomNavigationBar;
  final Widget? bottomSheet;
  final List<Widget>? persistentFooterButtons;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final VoidCallback? onPressedBack;

  const BEScaffold({
    super.key,
    required this.title,
    this.actions,
    this.appBarBottom,
    this.style = BEAppBarStyle.white,
    this.bgColor,
    this.bgImage,
    this.bgImagePackage,
    this.endDrawer,
    this.body,
    this.bottomNavigationBar,
    this.bottomSheet,
    this.persistentFooterButtons,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.onPressedBack,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: BEAppBar(
        title: title,
        actions: actions,
        bottom: appBarBottom,
        style: style,
        onPressedBack: onPressedBack,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: bgColor,
          image: bgImage != null
              ? DecorationImage(
                  image: AssetImage(
                    bgImage!,
                    package: bgImagePackage,
                  ),
                  fit: BoxFit.cover,
                )
              : null,
        ),
        child: body,
      ),
      endDrawer: endDrawer,
      bottomNavigationBar: bottomNavigationBar,
      bottomSheet: bottomSheet,
      persistentFooterButtons: persistentFooterButtons,
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation,
    );
  }
}
