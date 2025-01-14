import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../model/course.dart';

class RecentCourseCard extends StatelessWidget {
  RecentCourseCard({required this.course});

  Course course;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Container(
            width: 240,
            height: 240,
            decoration: BoxDecoration(
              gradient: course.background,
              borderRadius: BorderRadius.circular(41.0),
              boxShadow: [
                BoxShadow(
                  color: course.background!.colors[0].withOpacity(0.3),
                  offset: Offset(0, 20),
                  blurRadius: 30.0),
                BoxShadow(
                    color: course.background!.colors[1].withOpacity(0.3),
                    offset: Offset(0, 20),
                    blurRadius: 30.0)
              ]),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 32.0,
                    left: 32.0,
                    right: 32.0
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Hero(
                        tag: course.courseSubtitle ?? "Error tag in courseSibtittle",
                        child: Text(
                          course.courseSubtitle ?? "Error in courseSibtittle",
                          style: kCardSubtitleStyle,
                        ),
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      Hero(
                        tag: course.courseTitle ?? "Error tag in courseTitle",
                        child: Text(
                          course.courseTitle?? "Error in courseTitle",
                          style: kCardTitleStyle,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Hero(
                    child: Image.asset(
                      'assert/illustration/${course.illustration}',
                      fit: BoxFit.cover,
                    ),
                    tag: course.illustration ?? "Error tag in courseillustration",
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.only(
              right: 42.0
            ),
          child: Container(
            child: Hero(child: Image.asset(
                'asset/logos/${course.logo}'),
              tag: course.logo ?? "Error in courselogo",
            ),
            width: 60.0,
            height: 60.0,
            decoration:  BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18.0),
              boxShadow: [
                BoxShadow(
                  color: kShadowColor, offset: Offset(0, 4), blurRadius: 16.0)
              ],
            ),
            padding: EdgeInsets.all(12.0),
          ),
        )
      ],
    );
  }
  }
/*
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Container(
            width: 240,
            height: 240,
            decoration: BoxDecoration(
                gradient: course.background,
                borderRadius: BorderRadius.circular(41.0),
                boxShadow: [
                  BoxShadow(
                      color: course.background!.colors[0].withOpacity(0.3),
                      offset: Offset(0, 20),
                      blurRadius: 30.0),
                  BoxShadow(
                      color: course.background!.colors[1].withOpacity(0.3),
                      offset: Offset(0, 20),
                      blurRadius: 30.0)
                ]),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 32.0,
                    left: 32.0,
                    right: 32.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Hero(
                        tag: course.courseSubtitle ?? "Error in courseSubtitle",
                        child: Text(
                          course.courseSubtitle ?? "Error in courseSubtitle",
                          style: kCardSubtitleStyle,
                        ),
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      Hero(
                        tag: course.courseTitle ?? "Error in courseTitle",
                        child: Text(
                          course.courseTitle ?? "Error in courseTitle",
                          style: kCardTitleStyle,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Hero(
                    child: Image.asset(
                      'asset/illustrations/${course.illustration}',
                      fit: BoxFit.cover,
                    ),
                    tag: course.illustration ?? "Error in illustration",
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 42.0),
          child: Container(
            child: Hero(
              child: Image.asset('asset/logos/${course.logo}'),
              tag: course.logo ?? "Error in course.logo ",
            ),
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18.0),
              boxShadow: [
                BoxShadow(
                    color: kShadowColor, offset: Offset(0, 4), blurRadius: 16.0)
              ],
            ),
            padding: EdgeInsets.all(12.0),
          ),
        ),
      ],
    );
  }
}*/
