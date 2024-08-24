import 'package:flutter/material.dart';
import 'package:biodata/skill_chip.dart';


class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SkillChip(label: 'Python'),
            SkillChip(label: 'Django'),
            SkillChip(label: 'RESTAPI'),
            SkillChip(label: 'React'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SkillChip(label: 'AWS'),
            SkillChip(label: 'Node'),
            SkillChip(label: 'SQL'),
            SkillChip(label: 'MongoDB'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SkillChip(label: 'Express'),
            SkillChip(label: 'DRF'),
            SkillChip(label: 'Javascript'),
            SkillChip(label: 'Dart'),
          ],
        ),
      ],
    );
  }
}
