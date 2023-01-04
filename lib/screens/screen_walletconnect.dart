import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ddcamp_day3_wireframe/widgets/widget_appbartitle.dart';
import 'package:ddcamp_day3_wireframe/widgets/wiget_customtext.dart';

class WalletConnect extends StatefulWidget {
  @override
  _WalletConnectState createState() => _WalletConnectState();
}

class _WalletConnectState extends State<WalletConnect> {

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          primary: true,
          scrollDirection: Axis.vertical,
          child: Row(
            children: [
              Column(
                children: [
                  Container(
                    height: size.height * 0.15,
                    width: size.width * 0.2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: IconButton(
                            icon: ImageIcon(
                              AssetImage("assets/images/stot_logo_simple.png",),
                              size: 200.0,
                              color: Color(0xff64FFDA),
                            ),
                            onPressed: () {}
                      ),
                    )
                  ),
                  Container(
                    height: size.height * 0.85,
                    width: size.width * 0.2,
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
                ],
              ),
              Column(
                children: [
                  Container(
                    height: size.height * 0.15,
                    width: size.width * 0.8,
                    /*child: Expanded(
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
                    ),*/
                  ),
                  Expanded(
                      child: Container(
                        /*child: Padding(
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
                        ),*/
                      )
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
