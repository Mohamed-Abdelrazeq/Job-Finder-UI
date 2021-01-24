import 'package:flutter/material.dart';
import 'package:jobfinder_app/Component/Widgets.dart';
import '../Component/Constants.dart';


class HomePage extends StatelessWidget {
  static const String id = '/HomePage';
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).padding;
    double newheight = height - padding.top - padding.bottom;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: height - newheight,
            color: Kblue,
          ),
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: newheight*0.32/8),
                    height: newheight * 2 / 7,
                    decoration: BoxDecoration(
                      color: Kblue,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(80),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: newheight*0.2/8,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.mail,
                              size: newheight*0.32/8,
                              color: Colors.white,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: CircleAvatar(  backgroundImage: AssetImage('images/persona.jpg'),radius: newheight*0.15/8,),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: newheight * 5 / 7,
                    color: Colors.white,
                  )
                ],
              ),
              Positioned(
                top: newheight*.8/7,
                child: Container(
                    height: newheight*1.7/7,
                    width: width*4/5,
                    decoration: BoxDecoration(
                        color: Kyellow,
                        image: DecorationImage(
                            image: AssetImage('images/pattern2.png'),
                            fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(80),
                            topLeft: Radius.circular(80),
                            bottomRight: Radius.circular(80)
                        )
                    ),
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 40,vertical: newheight*.05/8),
                          child: Text(
                            'Welcome,',
                            style: TextStyle(
                                fontSize: newheight*.22/8,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 40,),
                          child: Text(
                            'Find your\ndream Job!',
                            style: TextStyle(
                                fontSize: newheight*.3/8,
                                fontWeight: FontWeight.w800,
                                wordSpacing: 2,
                                letterSpacing: 1.2
                            ),
                          ),
                        ),
                        SizedBox(height: newheight*.15/7,),
                      ],
                    )
                ),
              ),
              Positioned(
                top: newheight*2.5/7,
                child: Container(
                  color: Kyellow,
                  height: newheight*4/7,
                  width: width,
                ),
              ),
              Positioned(
                top: newheight*2.5/7,
                child: Container(
                  height: newheight*4.5/7,
                  width: width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(80)
                      )
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: newheight*2.2/7,
                        child: Column(
                          children: [
                            SizedBox(height: newheight*.25/7,),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Explore Categories',
                                    style: TextStyle(
                                        fontSize: newheight*.2/8,
                                        fontWeight: FontWeight.w600
                                    ),
                                  ),
                                  Icon(
                                    Icons.more_horiz_outlined,
                                    size: newheight*.2/8,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: newheight*.1/7,),
                            Container(
                              height: newheight*1.8/8,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  SizedBox(width: 20,),
                                  CategoryCard(height: newheight,myOpacity: 1,myColor: Kblue,myText: 'IT',myIcon: Icons.computer,myTextColor: Colors.white,),
                                  CategoryCard(height: newheight,myOpacity: 0.5,myColor: Kback,myText: 'Data',myIcon: Icons.analytics,myTextColor: Colors.black,),
                                  CategoryCard(height: newheight,myOpacity: 0.5,myColor: Kback,myText: 'Web',myIcon: Icons.web,myTextColor: Colors.black,),
                                  CategoryCard(height: newheight,myOpacity: 0.5,myColor: Kback,myText: 'App',myIcon: Icons.phone_android_sharp,myTextColor: Colors.black,),
                                  CategoryCard(height: newheight,myOpacity: 0.5,myColor: Kback,myText: 'Security',myIcon: Icons.security,myTextColor: Colors.black,),
                                  SizedBox(width: 20,),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: newheight*2.2/7,
                        child: Column(
                          children: [
                            SizedBox(height: newheight*.1/7,),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Popular search',
                                    style: TextStyle(
                                        fontSize: newheight*.2/8,
                                        fontWeight: FontWeight.w600
                                    ),
                                  ),
                                  Icon(
                                    Icons.more_horiz_outlined,
                                    size: newheight*.2/8,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: newheight*.1/7,),
                            Container(
                              height: newheight*1.85/8,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  SizedBox(width: 25,),
                                  JobCard(newheight: newheight,myColor: Kyellow,myAText: 'UI/UX',myBText: 'Designer',myCText: '4 Job Opportunity',),
                                  JobCard(newheight: newheight,myColor: Kyellow,myAText: 'IOS',myBText: 'Developer',myCText: '20 Job Opportunity',),
                                  JobCard(newheight: newheight,myColor: Kyellow,myAText: 'Flutter',myBText: 'Developer',myCText: '15 Job Opportunity',),
                                  JobCard(newheight: newheight,myColor: Kyellow,myAText: 'Technical',myBText: 'Support',myCText: '7 Job Opportunity',),

                                  SizedBox(width: 40,),
                                ],
                              ),
                            ),
                            SizedBox(height: newheight*.1/7,)
                          ],
                        ),
                      )

                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
