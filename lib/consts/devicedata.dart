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
      icon: Icons.person,
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
  Project(
      color: Colors.yellow,
      title: 'DhanManthan',
      image: '',
      bulletPoints: ['A', 'B', 'C']),
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
      "Actively develop and manage push notifications to engage users effectively.",
      "Successfully set up in-app purchase functionality for both iOS and Android platforms.",
      "Utilize the Provider package for streamlined state management and implement real-time data streams.",
      "Employ Amplitude and Firebase Analytics to track and analyze user behavior, informing data-driven decisions.",
      "The Startup has over 3,00,000 lakh active users",
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
      "Establish voice calling functionality using Agora SDK to enable real-time communication within the app.",
      "Implement intricate animations using Rive, enhancing the app's visual appeal and engagement.",
      "Collaborate directly with Stanza Living's CTO, gaining insights into industry best practices and cutting-edge technologies.",
      "Acquire proficiency in server-driven UI setup, optimizing app flexibility and scalability through dynamic configuration.",
    ],
  ),
  JobExperience(
    color: Colors.orangeAccent,
    location: "Remote",
    title: 'Video Editor',
    company: 'Google Developer Student Club',
    startDate: 'Sep. 2022',
    endDate: 'July 2023',
    bulletPoints: [
      "Collaborated with founders to develop a HealthifyMe clone, demonstrating strong teamwork and app development skills.",
      "Engineered complex animations to enhance user experience and app visual appeal.",
      "Played an active role in system design processes, contributing to efficient and scalable app architecture.",
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
      "Collaborated as a team member in developing a cryptocurrency wallet, akin to Trust Wallet, showcasing strong teamwork and blockchain app development expertise.",
      "Proficiently integrated REST APIs into the application, enhancing its functionality and connectivity with external services."
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
const String introduction = 'I am Arsh Kumar Mandal';
