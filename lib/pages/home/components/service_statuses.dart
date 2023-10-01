import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:provider/provider.dart';

import '../../../models/service_status.dart';
import '../change_notifier.dart';

class ServiceStatuses extends StatelessWidget {
  const ServiceStatuses({super.key});

  @override
  Widget build(BuildContext context) {
    final serviceStatuses = context.select((HomePageChangeNotifier value) => value.uiState.serviceStatuses);

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 25,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '各サービスの学習状況',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 6),
          const Divider(
            height: 1,
            color: Colors.grey,
          ),
          ...serviceStatuses.mapIndexed((i, v) {
            final listLength = serviceStatuses.length;
            if (i == listLength - 1) {
              return ServiceStatusWidget(serviceStatus: v);
            }
            return Column(
              children: [
                ServiceStatusWidget(serviceStatus: v),
                const Divider(
                  height: 1,
                  color: Colors.grey,
                ),
              ],
            );
          }),
        ],
      ),
    );
  }
}

class ServiceStatusWidget extends StatelessWidget {
  const ServiceStatusWidget({
    super.key,
    required this.serviceStatus,
  });

  final ServiceStatus serviceStatus;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 12,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(serviceStatus.iconPath),
            radius: 25,
            backgroundColor: Colors.transparent,
          ),
          const SizedBox(width: 8),
          // bar chart with fl_chart
          Expanded(
            child: LinearPercentIndicator(
              animation: true,
              lineHeight: 30.0,
              animationDuration: 2000,
              percent: context.read<HomePageChangeNotifier>().getPercentage(serviceStatus: serviceStatus),
              progressColor: const Color(0xFF32C864),
              barRadius: const Radius.circular(30),
            ),
          ),
          const SizedBox(width: 8),
          Text(
            '${serviceStatus.sum}分',
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
