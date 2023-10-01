import 'package:flutter/material.dart';
import 'package:flutter_forwards/pages/home/components/service_statuses.dart';

class HomeSubContent extends StatelessWidget {
  const HomeSubContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: const Color(0xFF32C864),
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.4,
        ),
        ClipRRect(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(30),
          ),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: double.infinity,
            color: Colors.white,
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ServiceStatuses(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
