
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:yehtet/pages/HomePage.dart';
import 'package:yehtet/pages/LibraryPage.dart';
import 'package:yehtet/pages/DevicePage.dart';
void main() => runApp(
  
  MaterialApp( 
    debugShowCheckedModeBanner: false,
    home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  
   int pageIndex = 0;
   //create all the pages
  final HomePage _homePage =HomePage();
  final DevicePage _devicePage =DevicePage();
  final LibraryPage _libraryPage =LibraryPage();
   Widget _showpage = new HomePage();
   Widget _pageChooser(int page){
     switch (page) {
       case 0:
         return _homePage;
         break;
        case 1:
         return _devicePage;
         break;
          case 2:
         return _libraryPage;
         break;
         default:
         return new Container(
           child: new Center(
             child: new Text(
               "No page found by page chooser.",
               style:new TextStyle(fontSize:30),
             ),
           ),
         );
     }
   }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          index : pageIndex,
           items: <Widget>[
            Icon(Icons.home, size: 30,color: Colors.white),
            Icon(Icons.desktop_windows, size: 30,color: Colors.white),
            Icon(Icons.book, size: 30,color: Colors.white),
           
            // RaisedButton(
            //   child: Text("Logout"),
            //   onPressed: (){
            //     Navigator.pushReplacementNamed(context, '/');
            //   },
            // )
            

          ],
          color: Colors.cyan,
          buttonBackgroundColor: Colors.cyan,
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInOutCubic,
          animationDuration: Duration(milliseconds: 400),
          onTap: (int tappedIndex) {
            setState(() {
               _showpage = _pageChooser(tappedIndex);
            });
          },
        ),
        body: Container(
          color: Colors.white,
          child:Center(
            child: _showpage,
          ),
        ));
  }
}