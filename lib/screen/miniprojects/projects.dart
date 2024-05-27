import 'package:awesome_portfolio/consts/devicedata.dart';
import 'package:awesome_portfolio/models/projects_model.dart';
import 'package:flutter/material.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // const SizedBox(
          //   height: 20,
          // ),
          const Center(
            child: Icon(
              Icons.flutter_dash,
              size: 100,
            ),
          ),
          const SizedBox(height: 2),
          ...List.generate(projects.length, (index) {
            Project project = projects[index];
            return ExpansionTile(
              tilePadding: const EdgeInsets.all(20),
              childrenPadding: const EdgeInsets.all(10),
              leading: Container(
                width: 2,
                height: 100,
                color: project.color,
              ),
              title: Text(
                project.title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              children: project.bulletPoints.map((bulletPoint) {
                return ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 15.0),
                  // leading: const Icon(Icons.arrow_right),
                  // title: Text(bulletPoint),
                  // contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                  // leading: Container(
                  //   width: 5,
                  //   height: 5,
                  //   decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(100),
                  //       color: Colors.black),
                  // ),
                  title: Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 5,
                        height: 5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.black),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Text(
                          bulletPoint,
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                          maxLines: 3,
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            );
          })
        ],
      ),
    );
  }
}
