import 'package:flutter_app_testing/imports/imports.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  void dispose() async{
    Hive.box('contacts').compact();
    Hive.close();
    super.dispose();
  }

   Future<bool> _onWillPop() {
       return showDialog(
           context: context,
           builder: (context) =>
               AlertDialog(
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.all(Radius.circular(20)),
                 ),
                 title: Text('Beenden?'),
                 content: Text('Möchten Sie die App beenden?'),
                 actions: <Widget>[
                   Padding(
                     padding: const EdgeInsets.only(right:20.0),
                     child: FlatButton(
                       onPressed: () => Navigator.of(context).pop(false),
                       child: Text('Nein',
                         style: TextStyle(
                           color: Colors.orange,
                           fontSize: 20.0,
                         ),),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(right:20.0),
                     child: RaisedButton(
                       color: Colors.blue,
                       onPressed: () => Navigator.of(context).pop(true),
                       child: Text('Ja',
                         style: TextStyle(
                             color: Colors.white,
                             fontSize: 20.0
                         ),),
                     ),
                   )
                 ],
               )) ?? false;
     }


  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    final Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: _onWillPop,
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.blue,
          systemNavigationBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.light,
        ),
        child: DropdownBanner(
          navigatorKey: navigatorKey,
          child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              title: Text('Yummy-App',
                style: GoogleFonts.pacifico(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.normal
                ),
              ),
              centerTitle: true,
              actions: [
                IconButton(
                  icon: Icon(Icons.settings,
                  size: 30,
                  color: Colors.white,),
                  onPressed: ()=>Navigator.push(context, BouncyPageRoute(widget: SettingsPage())),
                )
              ],
            ),
            body: Container(
              color: Colors.white60,
              child: Stack(
                children:[
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      width: size.width,
                      height: height*0.1,
                      child: Stack(
                        children:[ CustomPaint(
                          size: Size(size.width,40),
                          painter: CTBPainter(color: Theme.of(context).primaryColor),
                        ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        SizedBox(height: height*0.11,),
                        ItemCard(
                          title: 'Menü 1',
                          heroTag: 'image1',
                          image: 'assets/23136.jpg',
                          onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPage(image: 'assets/23136.jpg',
                                                                                                               heroTag: 'image1',
                                                                                                               title: 'Hähnchenbrust',
                                                                                                               titleBackgroundColor: Colors.blue,)
                          )),
                          elevation: 4,
                          titleColor: Colors.blue,),
                        ItemCard(
                          title: 'Menü 2',
                          heroTag: 'image2',
                          image: 'assets/6470.jpg',
                          onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPage(image: 'assets/6470.jpg'
                                                                                                               ,heroTag: 'image2'
                                                                                                               ,title: 'Hähnchen BBQ'
                                                                                                               ,titleBackgroundColor: Colors.orange,)
                          )),
                          elevation: 4,
                          titleColor: Colors.orange,),
                        ItemCard(
                          title: 'Menü 3',
                          heroTag: 'image3',
                          image: 'assets/19744.jpg',
                          onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPage(image: 'assets/19744.jpg'
                                                                                                               ,heroTag: 'image3'
                                                                                                               ,title: 'Pasta in Tomatensoße'
                                                                                                               ,titleBackgroundColor: Colors.green,)
                          )),
                          elevation: 4,
                          titleColor: Colors.green,),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: size.width,
                      height: height*0.07,
                      child: Stack(
                        children:[ CustomPaint(
                          size: Size(size.width,120),
                          painter: CBBPainter(color: Theme.of(context).primaryColor),
                        ),
                          Center(
                            heightFactor: 0.6,
                            child: FloatingActionButton(
                              backgroundColor: Theme.of(context).backgroundColor,
                              onPressed: (){DropdownBanner.showBanner(
                                text: 'Hinzugefügt',
                                textStyle: GoogleFonts.oswald(
                                    fontSize: 20,
                                    color: Colors.white),
                                color: Colors.green,
                              );},
                              elevation: 1,
                              foregroundColor: Theme.of(context).accentColor,
                              child: Icon(Icons.add_shopping_cart_outlined,),
                            ),
                          ),
                          BottomNavigation(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}