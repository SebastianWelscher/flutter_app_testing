import 'dart:ui';

import 'package:flutter_app_testing/imports/imports.dart';

class DetailPage extends StatefulWidget {

  final String image;
  final String heroTag;
  final String title;
  final Color titleBackgroundColor;
  
  DetailPage({@required this.image, @required this.heroTag,@required this.title,this.titleBackgroundColor});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> with TickerProviderStateMixin {
    AnimationController controller;
    AnimationController cardController;
    Animation<Offset> cardAnimation;
    Animation<double> animation;
    Duration duration = Duration(milliseconds: 600);
    Duration cardDuration = Duration(seconds: 1);

    @override
   void initState() {
   super.initState();
   controller = AnimationController(vsync: this,duration: duration);
   cardController = AnimationController(vsync: this, duration: cardDuration);


   cardAnimation = Tween<Offset>(begin: const Offset(0,4),end: Offset.zero).animate(CurvedAnimation(
     parent: controller,curve: Curves.fastLinearToSlowEaseIn,
   ));
    animation = Tween<double>(begin: 0,end: 0.8).animate(CurvedAnimation(
     parent: cardController, curve: Curves.linear,
   ));

      cardController.forward();
      controller.forward();
    }

  @override
   void dispose() {
   controller.dispose();
   cardController.dispose();
   super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    double radius = 10;

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.blue,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        extendBodyBehindAppBar: false,
        backgroundColor: Colors.lightBlueAccent,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: height*0.68,
                      child: Column(
                      children: [
                        Hero(
                          tag: widget.heroTag,
                          child: ClipPath(
                            clipper: DetailsPageImageClipper(),
                            child: Container(
                              height: height*0.4,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        widget.image),
                                    fit: BoxFit.cover,
                                  )
                              ),
                            ),
                          ),
                        ),
                      ],
                  ),
                    ),
                    Positioned(
                      top: height*0.25,
                      left: width*0.11,
                      child:  TweenAnimationBuilder(
                        tween: Tween<double>(begin: 0,end: 0.8),
                        duration: duration,
                        builder: (context, double val,Widget child){
                          return Opacity(
                            opacity: val,
                            child: Container(
                              height: height*0.1,
                              width: width*0.8,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(radius)),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(radius)),
                                    color: widget.titleBackgroundColor,
                                  ),
                                  child: Center(
                                    child: Text(widget.title,
                                      style: GoogleFonts.dancingScript(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: height*0.05,
                      left: width*0.02,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              decoration:BoxDecoration(
                               shape: BoxShape.circle,
                                color: Colors.white70,
                             ),
                              padding: EdgeInsets.only(left: 10),
                              child: IconButton(
                                icon: Icon(Icons.arrow_back_ios,
                                  color: Colors.white,
                                  size: 30,),
                                onPressed: ()=> Navigator.pop(context),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    /*
                    Column(
                      children: [
                        SizedBox(height: height*0.27,),
                        Container(
                          height: height*0.25,
                        ),
                          Container(
                            height: height*0.4,
                            width: width*0.95,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(radius)),
                              ),
                              elevation: 3,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(radius)),
                                  color: Colors.white70,
                                ),
                                child: Column(
                                  children: [
                                      SizedBox(height: height*0.15,),
                                      MultilineCommentTextWidget(),
                                    Center(
                                      child: OutlineButton(
                                        child: Text('Übernehmen',
                                        style: GoogleFonts.varelaRound(
                                          fontSize: 20,
                                        ),),
                                        onPressed: (){},
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),//

                     */
                 ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}