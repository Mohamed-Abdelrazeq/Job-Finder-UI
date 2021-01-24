import 'package:flutter/material.dart';
import 'package:jobfinder_app/Screens/Jobs.dart';
import 'package:jobfinder_app/Screens/JobDescription.dart';
import 'Constants.dart';

//EnterScreen Widgets
class JobCard extends StatelessWidget {
  const JobCard({
    Key key,
    @required this.newheight,
    @required this.myAText,
    @required this.myBText,
    @required this.myCText,
    @required this.myColor,

  }) : super(key: key);

  final double newheight;
  final String myAText;
  final String myBText;
  final String myCText;
  final Color myColor;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, JobsScreen.id);
      },
      child: Container(
        margin: EdgeInsets.only(left: 15),
        padding: EdgeInsets.symmetric(horizontal: newheight*.3/8),
        width: newheight*1.85/8,
        decoration: BoxDecoration(
            color: myColor,
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
                image: AssetImage('images/pattern1.png')
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: newheight*.8/8,),
            Text(
              '$myAText\n$myBText',
              style: TextStyle(
                  fontSize: newheight*.2/8,
                  fontWeight: FontWeight.w800
              ),
            ),
            SizedBox(height: newheight*.1/8,),
            Text(
              myCText,
              style: TextStyle(
                  fontSize: newheight*.13/8,
                  fontWeight: FontWeight.w400
              ),
            ),



          ],
        ),
      ),
    );
  }
}
class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    @required this.height,
    @required this.myIcon,
    @required this.myText,
    @required this.myColor,
    @required this.myTextColor,
    @required this.myOpacity,


  }) : super(key: key);

  final double height;
  final IconData myIcon;
  final String myText;
  final Color myColor;
  final Color myTextColor;
  final double myOpacity;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15),
      width: height*.9/8,
      height: height*1.8/8,
      decoration: BoxDecoration(
          color: myColor.withOpacity(myOpacity),
          borderRadius: BorderRadius.circular(150)
      ),
      child: Column(
        children: [
          SizedBox(height: height*.2/8,),
          Container(
            width: height*.6/8,
            height: height*.6/8,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(150)
            ),
            child: Center(
              child: Icon(
                myIcon,
                size: height*.4/8,
              ),
            ),
          ),
          SizedBox(height: height*.4/8,),
          Center(
            child: Text(
              myText,
              style: TextStyle(
                  color: myTextColor,
                  fontSize: height*.18/8
              ),
            ),
          ),
          SizedBox(height: height*.3/8,),
        ],
      ),
    );
  }
}
//Jobs Widgets
class JobSummary extends StatelessWidget {
  const JobSummary({
    Key key,
    @required this.width,
    @required this.newheight,
    @required this.myImage,
    @required this.myText,
    @required this.myMinSalary,
    @required this.myMaxSalary,
    @required this.myColor,

  }) : super(key: key);

  final double width;
  final double newheight;
  final String myImage;
  final String myText;
  final String myMinSalary;
  final String myMaxSalary;
  final Color myColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, JobDescription.id);
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: newheight*.1),
        padding: EdgeInsets.symmetric(horizontal: .07*width,vertical: .2*newheight),
        width: double.infinity,
        height: newheight,
        decoration: BoxDecoration(
            color: myColor.withOpacity(.5),
            borderRadius: BorderRadius.circular(25)
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(newheight*.12),
              width: newheight*.6,
              height: newheight*.6,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(150),
              ),
              child: Image(
                image: AssetImage(myImage),
              ),
            ),
            SizedBox(width: .07*width,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$myText',
                  style: TextStyle(
                      fontSize: newheight*.15,
                      fontWeight: FontWeight.w600

                  ),
                ),
                SizedBox(height: .05*newheight,),
                Text(
                  '\$${myMinSalary}k - \$${myMaxSalary}k',
                  style: TextStyle(
                      fontSize: newheight*.14,
                      fontWeight: FontWeight.w400

                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
//JobDescription Widgets
class ApplyCard extends StatelessWidget {
  const ApplyCard({
    Key key,
    @required this.width,
    @required this.height,
    @required this.myPlace,
    @required this.myIcon,
  }) : super(key: key);

  final double width;
  final double height;
  final String myPlace;
  final IconData myIcon;

  @override
  Widget build(BuildContext context) {


    double newWidth = MediaQuery.of(context).size.width;
    double newHeight = 1/8*MediaQuery.of(context).size.height;

    return Container(
      width: width*.8,
      height: height*.65,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: .18*newWidth,
            height: newHeight,
            decoration: BoxDecoration(
                color: Kyellow,
                borderRadius: BorderRadius.only(
                  bottomLeft:Radius.circular(20),
                  topLeft: Radius.circular(20) ,
                )
            ),
            child: Icon(
              myIcon,
              size: newHeight*.35,
            ),
          ),
          Container(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: newWidth*.05,),
                  Text(
                    'Apply for',
                    style: TextStyle(
                      fontSize: newHeight*.18,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  Text(
                    ' $myPlace',
                    style: TextStyle(
                        fontSize: newHeight*.18,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                  Text(
                    ' interview',
                    style: TextStyle(
                        fontSize: newHeight*.18,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  SizedBox(width: newWidth*.07,)


                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


