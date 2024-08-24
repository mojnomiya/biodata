import 'package:flutter/material.dart';
import 'package:biodata/contact_icon.dart';
import 'package:biodata/skills.dart';
import 'package:biodata/projects.dart';
import 'package:biodata/section_title.dart';

void main() {
  runApp(const BiodataApp());
}

class BiodataApp extends StatelessWidget {
  const BiodataApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Biodata",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const BiodataPage(),
    );
  }
}

class BiodataPage extends StatelessWidget {
  const BiodataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Biodata"),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60.0,
                  backgroundImage: NetworkImage(
                      'https://scontent.fdac24-2.fna.fbcdn.net/v/t39.30808-6/445241913_2484467151759170_7533790798016894332_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=a5f93a&_nc_eui2=AeEK0oftNyENiudgN0hX8Cs0lkPvT6cCmsqWQ-9PpwKaynSHOtl3gZAVsfR5mdQnVYV6BLzmHLtoB0io9lz9w0yD&_nc_ohc=KtgQVSEhJgYQ7kNvgFWx8JR&_nc_ht=scontent.fdac24-2.fna&oh=00_AYBQy5-fAxKfUWbxtthPAMhkCMg4M_mW_q2YJnLChiSP3w&oe=66CD53A5'),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Md Mojno Miya',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Software Developer | Backend',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Color.fromARGB(255, 79, 79, 79),
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Software Developer with a strong foundation in programming and a genuine passion for creating clean, efficient solutions. My journey into coding has been driven by a deep curiosity for technology and a relentless pursuit of creative problem-solving. I am committed to staying up-to-date with emerging technologies and methodologies to continuously improve my skills and deliver high-quality software solutions that meet both user needs and business objectives.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Color.fromARGB(255, 112, 112, 112),
                  ),
                ),
                SizedBox(height: 20.0),
                SectionTitle('Skills'),
                Skills(),
                SizedBox(height: 20.0),
                SectionTitle('Projects'),
                Projects(
                  title: 'Documedix',
                  description:
                      '• Spearheaded the backend and database development for a hospital and patient management application.\n• Engineered performance enhancements to ensure swift user interactions and a seamless experience.\n• Utilised Django’s native functions and user model to establish a secure authentication system.',
                ),
                Projects(
                  title: 'StudyBud: A discord like app',
                  description:
                      '• Crafted and deployed a chat application that mirrors the functionality of Discord.\n• Constructed a customised user model to enable email authentication.\n• Integrated a robust search functionality for efficient chat room discovery.',
                ),
                SizedBox(height: 20.0),
                SectionTitle('Experience'),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text(
                    '• Junior Software Devleloper at NexBell Inc, From March/2024',
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SectionTitle('Education'),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text(
                    '• MA in English Language and Literature, National University of Bangladesh, 2020',
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ContactIcon(
                      icon: Icons.email,
                      url: 'mailto:mojnosardar@gmail.com',
                    ),
                    ContactIcon(
                      icon: Icons.linked_camera,
                      url: 'https://www.linkedin.com/in/mojno/',
                    ),
                    ContactIcon(
                      icon: Icons.code,
                      url: 'https://github.com/mojnomiya',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
