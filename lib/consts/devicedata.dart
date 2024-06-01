import 'package:awesome_portfolio/models/app_model.dart';
import 'package:awesome_portfolio/models/color_model.dart';
import 'package:awesome_portfolio/models/device_model.dart';
import 'package:awesome_portfolio/models/experience_model.dart';
import 'package:awesome_portfolio/models/projects_model.dart';
import 'package:awesome_portfolio/models/skill_model.dart';
import 'package:awesome_portfolio/screen/miniprojects/about.dart';
import 'package:awesome_portfolio/screen/miniprojects/education.dart';
import 'package:awesome_portfolio/screen/miniprojects/experience.dart';
import 'package:awesome_portfolio/screen/miniprojects/projects.dart';
import 'package:awesome_portfolio/screen/miniprojects/skills.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double baseHeight = 790;
const double baseWidth = 1440;

List<DeviceModel> devices = [
  DeviceModel(device: Devices.android.onePlus8Pro, icon: Icons.android),
  DeviceModel(device: Devices.ios.iPhone13, icon: Icons.apple),
  DeviceModel(device: Devices.ios.iPad, icon: Icons.tablet)
];

List<ColorModel> colorPalette = [
  const ColorModel(
    svgPath: "assets/images/cloudRed.svg",
    color: Colors.yellowAccent,
    gradient: LinearGradient(
      begin: Alignment.bottomLeft,
      // transform: Grad,
      end: Alignment.topRight,
      colors: [Colors.yellowAccent, Colors.deepOrange],
    ),
  ),
  const ColorModel(
    svgPath: "assets/images/cloudBlue.svg",
    color: Colors.blue,
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      colors: [Colors.blue, Colors.black45],
    ),
  ),
  const ColorModel(
      svgPath: "assets/images/cloudBlue.svg",
      color: Color(0xff00d6ca),
      gradient: LinearGradient(
        colors: [Color(0xff00ebd5), Color(0xff293474)],
        stops: [0, 1],
        begin: Alignment.bottomRight,
        end: Alignment.topLeft,
      )),
  const ColorModel(
    svgPath: "assets/images/cloudBlue.svg",
    color: Color(0xff123cd1),
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment(-0.31, 0.95),
      colors: [Color(0xFF1042F4), Color(0x00203EA6)],
    ),
  ),
  const ColorModel(
    svgPath: "assets/images/cloudBlue.svg",
    color: Colors.purple,
    gradient: LinearGradient(
      colors: [Color(0xffc95edb), Colors.black12],
      stops: [0, 1],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  ),
  const ColorModel(
    svgPath: "assets/images/cloudBlue.svg",
    color: Color(0xfff35a32),
    gradient: LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [Colors.indigo, Colors.deepOrange], // Adjust colors as needed
    ),
  ),
];

List<AppModel> apps = [
  const AppModel(
      title: 'About',
      color: Colors.white,
      assetPath: 'assets/images/1690297909708.svg',
      screen: AboutMe()),
  const AppModel(
      screen: Skills(),
      title: 'Skills',
      color: Colors.white,
      icon: Icons.ac_unit_outlined),
  const AppModel(
    screen: Experience(),
    title: 'Experience',
    color: Colors.white,
    icon: FontAwesomeIcons.idBadge,
  ),
  const AppModel(
    screen: Education(),
    title: 'Education',
    color: Colors.white,
    icon: FontAwesomeIcons.edge,
  ),
  const AppModel(
    screen: Projects(),
    title: 'Projects',
    color: Colors.white,
    icon: Icons.flutter_dash,
  ),
  const AppModel(
      title: 'Resume',
      color: Colors.white,
      icon: Icons.file_copy,
      link: resumeLink),
  const AppModel(
      title: 'Email', color: Colors.white, icon: Icons.email, link: email),
  const AppModel(
      screen: AboutMe(),
      title: 'LinkedIn',
      color: Colors.white,
      link: linkedIn,
      assetPath: 'assets/icons/linkedin.svg'),
  const AppModel(
      title: 'X',
      color: Colors.white,
      link: x,
      assetPath: 'assets/icons/twitter-x.svg'),
  const AppModel(
      title: 'Instagram',
      color: Colors.white,
      icon: FontAwesomeIcons.instagram,
      link: instaGram),
  const AppModel(
      title: 'GitHub',
      color: Colors.white,
      assetPath: 'assets/icons/github.svg',
      link: github)
];

List<SkillsModel> skills = [
  SkillsModel(skillName: "Flutter", colorS: Colors.blue, iconPath: "random"),
  SkillsModel(
    skillName: "Firebase",
    colorS: Colors.yellow,
  ),
  SkillsModel(
    skillName: "Github",
    colorS: Colors.yellow,
  ),
  SkillsModel(
    skillName: "Dart",
    colorS: Colors.blue,
  ),
  SkillsModel(
    skillName: "Provider",
    colorS: Colors.orange,
  ),
  SkillsModel(
    skillName: "Riverpod",
    colorS: Colors.blue,
  ),
  SkillsModel(
    skillName: "GetX",
    colorS: Colors.red,
  ),
  SkillsModel(
    skillName: "REST API",
    colorS: Colors.yellow,
  ),
];

List<SkillsModel> languages = [
  SkillsModel(skillName: "Hindi", colorS: Colors.black),
  SkillsModel(skillName: "English", colorS: Colors.blueGrey),
];

final List<JobExperience> education = [
  JobExperience(
    color: Colors.red,
    location: "Durg(Chhattisgarh), India",
    title: 'Electronics & Telecommunication Engineering',
    company: 'Bhilai Institute Of Technology',
    startDate: 'October 2021',
    endDate: 'Present',
    bulletPoints: [
      "Currently in the final year of my college!",
    ],
  ),
  JobExperience(
    color: Colors.blue,
    location: "Bilaspur(Chhattisgarh), India",
    title: '12th',
    company: 'D.A.V Public School',
    startDate: 'June 2019',
    endDate: 'June 2020',
    bulletPoints: [
      'Turning Point Of my life.',
    ],
  ),
  JobExperience(
    color: Colors.yellow,
    location: "Bilaspur(Chhattisgarh), India",
    title: '10th',
    company: 'Railway Public School',
    startDate: 'June 2008',
    endDate: 'June 2018',
    bulletPoints: [
      'Best Part Of my life.',
    ],
  ),
];

List projects = [
  Project(color: Colors.yellow, title: 'DhanManthan', image: '', bulletPoints: [
    """Integrated financial, literacy and mentorship, enabling users to earn points through knowledge
sharing.""",
    """Utilised Flutter, Firebase, and GitHub, achieving a seamless user interface.""",
  ]),
  Project(
      color: Colors.blue,
      title: 'WeChat',
      image: '',
      bulletPoints: ['A', 'B', 'C']),
  Project(
      color: Colors.orange,
      title: 'WeathersApp',
      image: '',
      bulletPoints: ['A', 'B', 'C'])
];

final List<JobExperience> jobExperiences = [
  JobExperience(
    color: Colors.blue,
    location: "Work From Home",
    title: 'Flutter Developer Intern',
    company: 'SyncVerse',
    startDate: 'Augest 2023',
    endDate: 'October 2023',
    bulletPoints: [
      """Developed fire prevention mobile app for Syncverse, using Flutter and Firebase, enhancing safety
in hotels and public areas.""",
      """Achieved real-time data sync, boosting efficiency.""",
      """Proactively learned and implemented innovative solutions, ensuring continuous improvement."""
    ],
  ),
  // Add more job experiences here...
  JobExperience(
    color: Colors.redAccent,
    location: "Remote",
    title: 'Technical Lead',
    company: 'QuizBizz',
    startDate: 'Sep. 2024',
    endDate: 'Present',
    bulletPoints: [
      """Led website development at Quizbizz, enhancing online presence.""",
      """Managed all technical tasks for seamless execution."""
    ],
  ),
  JobExperience(
    color: Colors.orangeAccent,
    location: "Remote",
    title: 'Core Team Member',
    company: 'Google Developer Student Club',
    startDate: 'Sep. 2022',
    endDate: 'July 2023',
    bulletPoints: [
      """Successfully organized coding competitions and workshops.""",
      """Coordinate logistics such as venue booking, catering, and technical requirements for events.""",
      """Improved social media presence, resulting in increase of followers and engagement.""",
    ],
  ),
  JobExperience(
    color: Colors.greenAccent,
    location: "Remote",
    title: 'Campus Matri',
    company: 'GeeksForGeeks',
    startDate: 'june 2021',
    endDate: 'june 2022',
    bulletPoints: [
      """Facilitated communication between the campus and GeeksforGeeks, fostering a strong
community.""",
      """Developed and delivered presentations on various technical topics to promote coding culture."""
    ],
  ),
];

const String linkedIn = "https://www.linkedin.com/in/arsh-kumar-mandal/";
const String github = "https://github.com/arshmandal0725";
const String x = "https://x.com/ArshKumarMandal?t=XM3DQ2QNwFD1qxoYrDKbQA&s=09";
const String resumeLink =
    "https://drive.google.com/file/d/1ZuRnqy67oyXkYG_4FMOHLzzvC5vmGTSc/view?usp=sharing";
const String email = "arshmandal07@gmail.com";
const String instaGram = "https://www.instagram.com/arsh_mandal25/";
const String introduction = """
Hello! My name is Arsh Kumar Mandal, and I am a passionate Flutter developer with 1.5 years of experience in creating robust, high-quality mobile applications. My journey in mobile development began with a fascination for building intuitive and user-friendly apps, and I have honed my skills in using Flutter to bring innovative ideas to life.

Throughout my career, I have worked on diverse projects that demonstrate my ability to design, develop, and deploy apps that meet user needs. My portfolio includes notable projects, showcasing my expertise in Dart programming, UI/UX design, and API integration.

Currently I am doing B.Tech in ETC from B.I.T,Durg. Additionally, I continually enhance my skills through courses and workshops to stay current with the latest advancements in Flutter and mobile app development.

I am committed to excellence, creativity, and continuous learning, and I am excited about the opportunity to contribute to your projects. Please explore my portfolio and contact me to discuss potential collaborations.

Thank you for visiting 😊 !
""";
