import 'dart:async';

import 'package:avatar_glow/avatar_glow.dart';
import 'package:emran92/constants/app_color.dart';
import 'package:emran92/widgets/skills_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ResumeTabletDesktop extends StatefulWidget {
  @override
  _ResumeTabletDesktopState createState() => _ResumeTabletDesktopState();
}

class _ResumeTabletDesktopState extends State<ResumeTabletDesktop>
    with TickerProviderStateMixin {
  final int delayedAmount = 500;
  AnimationController controller;
  Timer timer;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 200,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Resume',
          style: GoogleFonts.righteous(fontSize: 50, color: primaryColor),
        ),
        AvatarGlow(
          startDelay: Duration(milliseconds: 1000),
          glowColor: primaryColor,
          endRadius: 80.0,
          duration: Duration(milliseconds: 2000),
          repeat: true,
          showTwoGlows: true,
          repeatPauseDuration: Duration(milliseconds: 100),
          shape: BoxShape.circle,
          animate: true,
          curve: Curves.fastOutSlowIn,
          child: CircleAvatar(
            backgroundImage: AssetImage('images/avatar.jpg'),
            radius: 40.0,
            backgroundColor: Colors.black,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.6,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Divider(
                  height: 20,
                  thickness: 20,
                  color: primaryColor,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: primaryColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    'EMRAN IMAM',
                    style: GoogleFonts.calistoga(
                        color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Expanded(
                child: Divider(
                  height: 20,
                  thickness: 20,
                  color: primaryColor,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Email: emran.imam@gmail.com',
                style: GoogleFonts.courierPrime(
                  color: primaryColor,
                  fontSize: 16,
                ),
              ),
              Text(
                'Phone: +8801676345200',
                style: GoogleFonts.courierPrime(
                  color: primaryColor,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 0.30,
              height: 220,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  FlatButton.icon(
                    onPressed: null,
                    icon: Icon(
                      Icons.account_box,
                      color: primaryColor,
                    ),
                    label: Text(
                      'Profile',
                      style: GoogleFonts.courierPrime(
                        color: primaryColor,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Text(
                      'Innovative optimized solution seeker. Exited to be at the development phase of my career as'
                          ' Freelance Web and App developer. I am ambitius, enthusiastic, co-operative and eager to learn and develop with new technologies.',
                      style: GoogleFonts.courierPrime(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.3,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  FlatButton.icon(
                    onPressed: null,
                    icon: Icon(
                      Icons.business_center,
                      color: primaryColor,
                    ),
                    label: Text(
                      'Skills',
                      style: GoogleFonts.courierPrime(
                        color: primaryColor,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:15.0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Technical Skills',
                            style: GoogleFonts.courierPrime(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          SkillWidget(
                            skillText: 'HTML5',
                            skillValue: 90,
                          ),
                          SizedBox(
                            height: 2.0,
                          ),
                          SkillWidget(
                            skillText: 'CSS',
                            skillValue: 90,
                          ),
                          SizedBox(
                            height: 2.0,
                          ),
                          SkillWidget(
                            skillText: 'PHP',
                            skillValue: 80,
                          ),
                          SizedBox(
                            height: 2.0,
                          ),
                          SkillWidget(
                            skillText: 'Laravel',
                            skillValue: 60,
                          ),
                          SizedBox(
                            height: 2.0,
                          ),
                          SkillWidget(
                            skillText: 'Flutter',
                            skillValue: 50,
                          ),
                          SizedBox(
                            height: 2.0,
                          ),
                          SkillWidget(
                            skillText: 'Vue.Js',
                            skillValue: 30,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Additional Skills',
                            style: GoogleFonts.courierPrime(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          SkillWidget(
                            skillText: 'Github',
                            skillValue: 90,
                          ),
                          SizedBox(
                            height: 2.0,
                          ),
                          SkillWidget(
                            skillText: 'Firebase',
                            skillValue: 60,
                          ),
                          SizedBox(
                            height: 2.0,
                          ),
                          SkillWidget(
                            skillText: 'Unity',
                            skillValue: 40,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 50,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 0.30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  FlatButton.icon(
                    onPressed: null,
                    icon: Icon(
                      FontAwesomeIcons.graduationCap,
                      color: primaryColor,
                    ),
                    label: Text(
                      'Education',
                      style: GoogleFonts.courierPrime(
                        color: primaryColor,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Text(
                      '◉ Bachelor of Science (B.Sc.) in Computer Science and Engineering',
                      style: GoogleFonts.courierPrime(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Institute: Ahsanullah University of Science and Technology',
                          style: GoogleFonts.courierPrime(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'Department: Computer Science And Technology',
                          style: GoogleFonts.courierPrime(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'Passing Year: 2018',
                          style: GoogleFonts.courierPrime(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Text(
                      '◉ Higher Secondary Certificate (HSC)',
                      style: GoogleFonts.courierPrime(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Institute: Dhaka College',
                          style: GoogleFonts.courierPrime(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'Department: Science',
                          style: GoogleFonts.courierPrime(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'Passing Year: 2012',
                          style: GoogleFonts.courierPrime(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Text(
                      '◉ Secondary School Certificate (SSC)',
                      style: GoogleFonts.courierPrime(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Institute: Ideal School and College',
                          style: GoogleFonts.courierPrime(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'Department: Science',
                          style: GoogleFonts.courierPrime(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'Passing Year: 2010',
                          style: GoogleFonts.courierPrime(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.30,
              height: 320,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  FlatButton.icon(
                    onPressed: null,
                    icon: Icon(
                      FontAwesomeIcons.certificate,
                      color: primaryColor,
                    ),
                    label: Text(
                      'Training',
                      style: GoogleFonts.courierPrime(
                        color: primaryColor,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Text(
                      '◉ Web Application Development-PHP',
                      style: GoogleFonts.courierPrime(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Institute: Basis Institute of Technology and Managment',
                          style: GoogleFonts.courierPrime(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'Topics: Bootstrap, OOP, PHP, Laravel, Vue.JS',
                          style: GoogleFonts.courierPrime(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'Year: 2019',
                          style: GoogleFonts.courierPrime(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Text(
                      '◉ Android and iOS App Development with Flutter',
                      style: GoogleFonts.courierPrime(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Institute: Basis Institute of Technology and Managment',
                          style: GoogleFonts.courierPrime(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'Topics: Dart, Flutter, Android, iOS',
                          style: GoogleFonts.courierPrime(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'Year: 2019',
                          style: GoogleFonts.courierPrime(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}


