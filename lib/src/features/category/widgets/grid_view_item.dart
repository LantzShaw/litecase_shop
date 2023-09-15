/// @author think
/// @email TODO
/// @date 2023.09.15
/// @description TODO
/// @license The MIT License

import 'package:flutter/material.dart';

class GridViewItem extends StatelessWidget {
  GridViewItem({super.key, this.label, this.icon});

  final String? label;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.ac_unit),
        Text('$label'),
      ],
    );
  }
}
