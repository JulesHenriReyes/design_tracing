import 'package:flutter/material.dart';

class WaterTracker extends StatelessWidget {
  const WaterTracker({super.key});

  // Reusable light blue tip box
  Widget tipBox(String text) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: const Color(0xFFDBE8FD),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Color(0xFF2745B5),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF3F7),

      // Top bar
      appBar: AppBar(
        backgroundColor: const Color(0xFF3A66C8),
        centerTitle: true,
        title: const Text(
          'Water Tracker',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Column(
          children: [
            const SizedBox(height: 12),

            // Header
            const Icon(Icons.water_drop, size: 85, color: Color(0xFF3F9CFF)),
            const SizedBox(height: 10),
            const Text(
              'Stay Hydrated!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1A202C),
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'Build a healthy daily habit',
              style: TextStyle(fontSize: 17, color: Color(0xFF5A6578)),
            ),
            const SizedBox(height: 16),

            // Goal card
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
              ),
              child: const Column(
                children: [
                  Text(
                    'Daily Water Goal',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4A5568),
                    ),
                  ),
                  Text(
                    '8',
                    style: TextStyle(
                      fontSize: 90,
                      fontWeight: FontWeight.w900,
                      color: Color(0xFF2745B5),
                      height: 1.15,
                    ),
                  ),
                  Text(
                    'glasses per day',
                    style: TextStyle(fontSize: 18, color: Color(0xFF4A5568)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),

            // Tips
            tipBox('Drink water regularly'),
            const SizedBox(height: 10),
            tipBox('Bring your water bottle'),
            const SizedBox(height: 12),

            // Footer
            const Text(
              'Every glass counts!',
              style: TextStyle(fontSize: 14, color: Color(0xFF5A6578)),
            ),
          ],
        ),
      ),
    );
  }
}
