import 'package:flutter/material.dart';

class BEDatePicker extends StatelessWidget {
  final String date;
  final GestureTapCallback? onTap;

  const BEDatePicker({
    super.key,
    required this.date,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        date,
        style: const TextStyle(fontSize: 13),
      ),
      trailing: const Icon(
        Icons.arrow_drop_down,
        size: 30,
      ),
      onTap: onTap,
    );
  }
}
