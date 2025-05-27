import 'package:flutter/material.dart';

import '../../theme/be_theme.dart';
import '../layout/be_bottom_bar.dart';
import 'be_button.dart';

class BottomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const BottomButton({
    super.key,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return BEBottomBar(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 72,
        ),
        child: BEButton(
          height: BETheme.buttonMinHeight,
          constraints: const BoxConstraints(
            maxWidth: BETheme.bottomButtonMaxWidth,
            minWidth: BETheme.bottomButtonMinWidth,
          ),
          borderRadius: BorderRadius.circular(BETheme.buttonMinHeight / 2),
          backgroundColor: BETheme.buttonColorBlue,
          text: text,
          onPressed: onPressed,
        ),
      ),
    );
  }
}
