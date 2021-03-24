import 'package:ourESchool/UI/pages/Dashboard/Subjects/Subjects.dart';
import 'package:ourESchool/core/helpers/FirebaseAnalytics.dart';
import 'package:ourESchool/imports.dart';

class MainDashboard extends StatefulWidget with AnalyticsScreen {
  MainDashboard({Key key}) : super(key: key) {
    // setCurrentScreen();
  }
  static String pageName = string.dashboard;

  _MainDashboardState createState() => _MainDashboardState();

  @override
  String get screenName => 'ParentAndTeacher Dashboard';
}

class _MainDashboardState extends State<MainDashboard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: Padding(
          padding: EdgeInsets.only(left: 10.0, right: 10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: ListView(
                  children: [
                    ColumnReusableCardButton(
                      directionIconHeroTag: "Students",
                      height: 50,
                      tileColor: Colors.deepPurpleAccent,
                      label:  "Students",
                      icon: FontAwesomeIcons.child,
                      onPressed: () {
                        kopenPage(context, ChildrensPage());
                      },
                    ),
                    Container(
                      height: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RowReusableCardButton(
                            tileColor: Colors.deepOrangeAccent,
                            label: string.e_card,
                            onPressed: () {
                              kopenPage(context, ECardPage());
                            },
                            icon: Icons.perm_contact_calendar,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          RowReusableCardButton(
                            tileColor: null,
                            icon: Icons.av_timer,
                            label: string.timetable,
                            onPressed: () {
                              kopenPage(context, TimeTablePage());
                            },
                          ),
                        ],
                      ),
                    ),
                    ColumnReusableCardButton(
                      directionIconHeroTag: string.announcement,
                      height: 50,
                      tileColor: Colors.orangeAccent,
                      label: string.announcement,
                      icon: CustomIcons.megaphone,
                      onPressed: () {
                        kopenPage(context, AnnouncementPage());
                      },
                    ),
                    Container(
                      height: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RowReusableCardButton(
                            tileColor: Colors.blueGrey,
                            icon: CustomIcons.traveler_with_a_suitcase,
                            label: string.holidays,
                            onPressed: () {
                              kopenPage(context, HolidayPage());
                            },
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          RowReusableCardButton(
                            tileColor: Colors.lightGreen,
                            label: string.assignment,
                            onPressed: () {
                              kopenPage(context, AssignmentsPage());
                            },
                            icon: Icons.assignment,
                          ),
                        ],
                      ),
                    ),
                    ColumnReusableCardButton(
                      height: 50,
                      tileColor: Colors.grey,
                      label: string.transportation,
                      onPressed: () {
                        kopenPage(context, TransportationPage());
                      },
                      icon: FontAwesomeIcons.bus,
                    ),
                    SizedBox(
                      height: 100,
                      child: ListView(
                        shrinkWrap: false,
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              RowReusableCardButton(
                                tileColor: Colors.deepPurple,
                                icon: FontAwesomeIcons.female,
                                label: string.parenting_guide,
                                onPressed: () {
                                  kopenPage(context, ParentingGuidePage());
                                },
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              RowReusableCardButton(
                                tileColor: Colors.blue,
                                icon: Icons.web_sharp,
                                label: "Subjects",
                                onPressed: () {
                                  kopenPage(context, Subjects());
                                },
                              ),

                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 100,
                      child: ListView(
                        shrinkWrap: false,
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              RowReusableCardButton(
                                tileColor: Colors.indigo,
                                icon: FontAwesomeIcons.female,
                                label:"Result",
                                onPressed: () {
                                  kopenPage(context, ResultPage());
                                },
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              RowReusableCardButton(
                                tileColor: Colors.green,
                                icon: Icons.web_sharp,
                                label: "Fees",
                                onPressed: () {
                                  kopenPage(context, FeesPage());
                                },
                              ),

                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
