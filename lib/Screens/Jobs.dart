import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Component/Constants.dart';
import 'package:jobfinder_app/Component/Widgets.dart';

class JobsScreen extends StatefulWidget {
  static const String id = '/JobsScreen';
  @override
  _JobsScreenState createState() => _JobsScreenState();
}

class _JobsScreenState extends State<JobsScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = 1/7*MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Column(
              children: [
                Container(
                  height: height*2,
                  width: width,
                  padding: EdgeInsets.fromLTRB(height*.4,height*.37,height*.2,height*.2),
                  decoration: BoxDecoration(
                      color: Kyellow,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(80)
                      ),
                    image: DecorationImage(
                      image: AssetImage('images/pattern2.png'),
                      fit: BoxFit.cover
                    )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black87,
                              size: height*.2,
                            ),
                            onTap: (){
                              Navigator.pop(context);
                            },
                          )
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Text(
                            'UI/UX\nDesigner',
                            style: TextStyle(
                                fontSize: height*.3,
                                fontWeight: FontWeight.w700
                            ),
                          ),
                          SizedBox(height: height*.05,),
                          Text(
                            '4 Job Opportunity',
                            style: TextStyle(
                                fontSize: height*.15,
                                fontWeight: FontWeight.w300
                            ),
                          )
                        ],
                      )



                    ],
                  ),
                ),
                Container (
                  height: height*5,
                  width: width,
                  decoration: BoxDecoration(
                    color: Kyellow,
                  ),
                ),

              ],
            ),
          ),
          Positioned(
            top: 2*height,
            left: 0,
            child: Column(
              children: [
                Container(
                  height: height*5,
                  width: width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(80)
                      )
                  ),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(width*.1,70,width*.1,0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          JobSummary(width: width, newheight: height,myColor: Kback,myImage: 'images/twitter.png',myMaxSalary: '12',myMinSalary: '8',myText: 'Lead UI Designer',),
                          JobSummary(width: width, newheight: height,myColor: Kback,myImage: 'images/youtube.jpg',myMaxSalary: '16',myMinSalary: '10',myText: 'Senior Web Designer',),
                          JobSummary(width: width, newheight: height,myColor: Kback,myImage: 'images/facebook.png',myMaxSalary: '18',myMinSalary: '14',myText: 'UI/UX Designer',),
                          JobSummary(width: width, newheight: height,myColor: Kback,myImage: 'images/pintrest.png',myMaxSalary: '20',myMinSalary: '16',myText: 'Graphic Designer',),

                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 1.7*height,
            left: 3.8/5*width,
            child: Container(
              height: .5*height,
              width: .5*height,
              decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Icon(
                Icons.keyboard_arrow_down_sharp,
                size: .35*height,
                color: Colors.white,
              ),
            ),
          )

        ],
      ),
    );
  }
}


