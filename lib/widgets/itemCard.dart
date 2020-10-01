import 'package:flutter_app_testing/imports/imports.dart';

class ItemCard extends StatelessWidget {

  Function onTap;
  final String title;
  final double elevation;
  final String image;
  final String heroTag;
  final double radius = 10;
  Color titleColor = Colors.blue;

  ItemCard(
      {@required this.title, @required this.image, @required this.heroTag, @required this.onTap, this.elevation, this.titleColor});

  @override
  Widget build(BuildContext context) {

    var widht = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: onTap,
      child: Hero(
        tag: heroTag,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: widht*0.95,
            height: height*0.2,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(radius)),
              ),
              elevation: elevation,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(radius)),
                        image: DecorationImage(
                          image: AssetImage(
                              image),
                          fit: BoxFit.cover,
                        )
                    ),
                  ),
                  Positioned(
                    child: Container(
                      height:height*0.05,
                      width: widht*0.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(radius),
                          bottomRight: Radius.circular(radius),
                        ),
                        color: titleColor,
                      ),
                      child: Center(
                        child: Text(title,
                          style: GoogleFonts.dancingScript(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),),
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