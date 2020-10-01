import 'package:flutter_app_testing/imports/imports.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              icon: Icon(Icons.receipt_long_outlined,
                size: 30,
                color: Colors.white,),
              onPressed: () => DropdownBanner.showBanner(
                text: 'Home-Icon',
                textStyle: GoogleFonts.oswald(
                    fontSize: 20,
                    color: Colors.white),
                color: Colors.green,
              )),
          IconButton(
              icon: Icon(Icons.restaurant_menu_outlined,
                size: 30,
                color: Colors.white,),
              onPressed: () => DropdownBanner.showBanner(
                text: 'Restaurant-Icon',
                textStyle: GoogleFonts.oswald(
                    fontSize: 20,
                    color: Colors.white),
                color: Colors.green,
              )),
          Container(
            width: size.width * 0.2,
          ),
          IconButton(
              icon: Icon(Icons.bookmark_outlined,
                size: 30,
                color: Colors.white,),
              onPressed: () => DropdownBanner.showBanner(
                text: 'Bookmark-Icon',
                textStyle: GoogleFonts.oswald(
                    fontSize: 20,
                    color: Colors.white),
                color: Colors.green,
              )),
          Badge(
            badgeContent: Text('1'),
            showBadge: true,
            badgeColor: Colors.white,
            child: IconButton(
                icon: Icon(Icons.notification_important_outlined,
                  size: 30,
                  color: Colors.white,),
                onPressed: () => DropdownBanner.showBanner(
                  text: 'Notify-Icon',
                  textStyle: GoogleFonts.oswald(
                      fontSize: 20,
                      color: Colors.white),
                  color: Colors.green,
                )),
          ),
        ],
      ),
    );
  }
}