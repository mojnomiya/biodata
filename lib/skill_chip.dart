import 'package:flutter/material.dart';

class SkillChip extends StatelessWidget {
  const SkillChip({super.key, required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Chip(
        label: Text(
          label,
          style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 12),
        ),
        backgroundColor: const Color.fromARGB(255, 226, 241, 255),
      ),
    );
  }
}
