import 'package:flutter/material.dart';
import 'package:kachra_alert/widget/change_notifier_provider.dart';
import '../app_state.dart';
import '../models/collection_schedule.dart';

class ScheduleTab extends StatelessWidget {
  const ScheduleTab({super.key});

  @override
  Widget build(BuildContext context) {
    final state = ChangeNotifierProvider.of<AppState>(context);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShaderMask(
              shaderCallback: (bounds) => const LinearGradient(
                colors: [Color(0xFF00D9C0), Color(0xFF00F5D4)],
              ).createShader(bounds),
              child: const Text(
                'Collection Schedule',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Your weekly waste collection calendar',
              style: TextStyle(fontSize: 14, color: Color(0xFF8F9BB3)),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: ListView.builder(
                itemCount: state.schedules.length,
                itemBuilder: (context, index) {
                  final schedule = state.schedules[index];
                  return _buildScheduleCard(schedule);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildScheduleCard(CollectionSchedule schedule) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1F3A),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFF2A2F4A)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                gradient: schedule.gradient,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: schedule.gradient.colors.first.withOpacity(0.3),
                    blurRadius: 15,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Icon(schedule.icon, color: Colors.white, size: 35),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    schedule.type,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(
                        Icons.calendar_today,
                        color: Color(0xFF8F9BB3),
                        size: 16,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        schedule.day,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Color(0xFF8F9BB3),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(
                        Icons.access_time,
                        color: Color(0xFF8F9BB3),
                        size: 16,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        schedule.time,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Color(0xFF8F9BB3),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: const Color(0xFF00D9C0).withOpacity(0.2),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                'Active',
                style: TextStyle(
                  color: Color(0xFF00D9C0),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
