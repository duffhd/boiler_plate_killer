import 'package:boiler_plate_killer/pages/entity_boilerplate/entity_boilerplate.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../pages/about/about_page.dart';
import '../pages/entity_boilerplate/entity_boilerplate_notifier.dart';

class PageSelector extends StatelessWidget {
  final int index;

  const PageSelector({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (index == 0) {
      return ChangeNotifierProvider(
          create: (context) => EntityBoilerplateNotifier(),
          child: const EntityBoilerplate());
    } else if (index == 1) {
      return const AboutPage();
    }

    return const SizedBox.shrink();
  }
}
