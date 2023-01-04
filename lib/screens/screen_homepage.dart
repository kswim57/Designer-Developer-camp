import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ddcamp_day3_wireframe/widgets/widget_appbartitle.dart';
import 'package:ddcamp_day3_wireframe/widgets/wiget_customtext.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          primary: true,
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              //Navigation Bar
              Container(
                height: size.height * 0.14,
                width: size.width * 0.8,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      IconButton(
                          icon: ImageIcon(
                            AssetImage("assets/images/stot_logo_simple.png",),
                            size: 200.0,
                            color: Color(0xff64FFDA),
                          ),
                          onPressed: () {}
                      ),
                      Spacer(),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: DefaultTabController(
                            length: 2,
                            child: TabBar(
                              indicatorColor: Colors.transparent,
                              onTap: (index) async {
                              },
                              tabs: [
                                Tab(
                                  child: AppBarTitle(
                                    text: 'About',
                                  ),
                                ),
                                Tab(
                                  child: AppBarTitle(
                                    text: 'Profile',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Card(
                          elevation: 4.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: Container(
                            margin: EdgeInsets.all(0.85),
                            height: size.height * 0.07,
                            width: size.height * 0.20,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.of(context).pushReplacementNamed('/login');
                              },
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                ),
                                child: Text(
                                  "Log In",
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Row(
                children: [
                  //Social Icon
                  Container(
                    width: size.width * 0.2,
                    height: size.height,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomRight:Radius.circular(30), topRight: Radius.circular(30), ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.7),
                          spreadRadius: 0,
                          blurRadius: 2.0,
                          offset: Offset(0, 10), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: FaIcon(FontAwesomeIcons.peopleGroup),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/chat');
                          },
                          iconSize: 40.0,
                        ),
                        IconButton(
                            icon: FaIcon(FontAwesomeIcons.wallet),
                            iconSize: 40.0,
                            onPressed: () {
                              Navigator.of(context).pushNamed('/walletconnect');
                            }),
                        IconButton(
                            icon: FaIcon(FontAwesomeIcons.solidCircleUser),
                            iconSize: 40.0,
                            onPressed: () {
                              Navigator.of(context).pushNamed('/walletconnect');
                            }),
                        Padding(
                          padding: const EdgeInsets.all(20),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: size.height - 82,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: CustomScrollView(
                          slivers: <Widget>[
                            SliverList(
                                delegate: SliverChildListDelegate([
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: size.height * .06,
                                      ),
                                      CustomText(
                                        text: "Hello, we are",
                                        textsize: 16.0,
                                        color: Color(0xffffA8B2D1),
                                        letterSpacing: 3.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      SizedBox(
                                        height: 6.0,
                                      ),
                                      CustomText(
                                        text: "STOT",
                                        textsize: 68.0,
                                        color: Color(0xffffA8B2D1),
                                        fontWeight: FontWeight.w900,
                                        letterSpacing: 2.0,
                                      ),
                                      SizedBox(
                                        height: 4.0,
                                      ),
                                      CustomText(
                                        text:
                                        "Community-based startup investment platform",
                                        textsize: 56.0,
                                        color: Color(0xffffA8B2D1),
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 2.0,
                                      ),
                                      SizedBox(
                                        height: size.height * .04,
                                      ),
                                      Wrap(
                                        children: const [
                                          Text(
                                            "STOT is the first community-based startup investment platform in Korea that can form a community with other investors to invest together and share the growth of startups as shareholders through continuous communication.",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 16.0,
                                              letterSpacing: 2.75,
                                              wordSpacing: 0.75,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: size.height * .12,
                                      ),
                                      SizedBox(
                                        height: size.height * 0.20,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),
                                ])),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
