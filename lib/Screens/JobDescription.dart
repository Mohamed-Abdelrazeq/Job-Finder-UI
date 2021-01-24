import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobfinder_app/Component/Widgets.dart';
import 'package:jobfinder_app/Component/Constants.dart';


class JobDescription extends StatelessWidget {
  static const String id = '/JobDescription';
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = 1/8*MediaQuery.of(context).size.height;

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
                  height: height*2.4,
                  width: width,
                  decoration: BoxDecoration(
                      color: Kyellow,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(60),
                      ),
                      image: DecorationImage(
                          image: AssetImage('images/pattern2.png'),
                          fit: BoxFit.cover
                      )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        child: Padding(
                          padding: EdgeInsets.all(height*.35),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black87,
                            size: height*.2,
                          ),
                        ),
                        onTap: (){
                          Navigator.pop(context);
                        },
                      ),



                    ],
                  ),
                ),
                Container(
                  height: height*1.6,
                  width: width,
                  decoration: BoxDecoration(
                      color: Kyellow,
                  ),
                ),
                Container(
                  height: height*1.6,
                  width: width,
                  decoration: BoxDecoration(
                      color: Kblue,
                      borderRadius: BorderRadius.only(
                      )
                  ),
                )

              ],
            ),
          ),
          Positioned(
            top: 2.4*height,
            left: 0,
            child: Column(
              children: [
                Container(
                  height: height*1.6,
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60)
                    )
                  ),
                ),
                Container(
                  height: height*1.6,
                  width: width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(60)
                      )
                  ),
                )

              ],
            ),
          ),
          Positioned(
            top: 5.6*height,
            left: 0,
            child: Container(
              height: 2.4*height,
              width: width,
              decoration: BoxDecoration(
                color: Kblue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60)
                )
              ),
            ),
          ),


          Positioned(
            top: height*1.8,
            left: width*.1,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: height*.3,horizontal: height*.4),
              height: 1.3*height,
              width: width*.7,
              decoration: BoxDecoration(
                  color: Kblue,
                  borderRadius: BorderRadius.circular(25)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height*.05,),
                  Text(
                    'UI/UX Designer',
                    style: TextStyle(
                      fontSize: height*.26,
                      fontWeight: FontWeight.w600,
                      color: Colors.white
                    ),
                  ),
                  SizedBox(height: height*.05,),
                  Text(
                    '\$6k - \$8k',
                    style: TextStyle(
                        fontSize: height*.16,
                        fontWeight: FontWeight.w300,
                        color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: height*1.55,
            left: width*.17,
            child: Container(
              padding: EdgeInsets.all(width*.02),
              width: height*.55,
              height: height*.55,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Image(
                image: AssetImage('images/twitter.png'),
              ),
            ),

          ),

          Positioned(
            top: 3.4*height,
            left: .1*width,
            child: Container(
              height: 2 * height,
              width:  .8 * width,
              padding: EdgeInsets.symmetric(horizontal: width*.02),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25)
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: height*.18,),
                    Text(
                      'Description',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: height*.3,
                      ),
                    ),
                    SizedBox(height: height*.1,),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.dis parturient montes, nascetur ridiculus mus.montes ridiculus montes, nascetur ridiculus mus.',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                        fontSize: height*.15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Positioned(
            top: height*6,
            left: width*.1,
            child: ApplyCard(width: width, height: height,myIcon: Icons.web,myPlace: 'Online',),
          ),
          Positioned(
            top: height*6.9,
            left: width*.1,
            child: ApplyCard(width: width, height: height, myIcon: Icons.location_on_rounded,myPlace: 'Onsite',),
          ),

        ],
      ),
    );
  }
}

