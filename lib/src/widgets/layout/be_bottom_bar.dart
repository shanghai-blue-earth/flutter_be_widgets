import 'package:flutter/material.dart';

import '../../theme/be_theme.dart';

class BEBottomBar extends StatelessWidget {
  final Widget child;

  const BEBottomBar({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [BETheme.boxShadow],
      ),
      child: child,
    );
  }
}
