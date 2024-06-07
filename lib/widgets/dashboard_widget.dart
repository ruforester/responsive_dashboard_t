import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/activity_details_card.dart';
import 'package:responsive_dashboard/widgets/header_widget.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 18),
        Header(),
        // SizedBox(height: 18),
        ActivityDetailsCard(),
      ],
    );
  }
}
