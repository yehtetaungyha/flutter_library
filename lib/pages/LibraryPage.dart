import 'package:flutter/material.dart';
import 'package:yehtet/detail/detail.dart';
class LibraryPage extends StatefulWidget {
  @override
  _LibraryPageState createState()=> new _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage>{
  
  @override
  Widget build(BuildContext context) {
    
    var card = new Card(
          child:SingleChildScrollView(
          child:new Column(
            
            children: <Widget>[
              
              new ListTile(
                
                 leading: new CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: new Image(image: new AssetImage("assets/bootstrap.png")),
                ),
                 title: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new Text("Herry Potter")
                      ),
                    
                new RaisedButton(
               onPressed: () {
                  Route route = MaterialPageRoute(builder: (context) => DetailPage());
                  Navigator.push(context, route);
                },
                color: Colors.green,
                child: new Text('Detail'),
                textColor: Colors.white,
               shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(6.0))
              ),
                  ],
        )
              ),
              new Divider(color: Colors.grey,),
               new ListTile(
                  leading: new CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: new Image(image: new AssetImage("assets/hp.jpg")),
                ),
                 title: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new Text("Herry Potter")
                      ),
                    
                new RaisedButton(
                onPressed: () {
                  Route route = MaterialPageRoute(builder: (context) => DetailPage());
                  Navigator.push(context, route);
                },
                color: Colors.green,
                child: new Text('Detail'),
                textColor: Colors.white,
               shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(6.0))
              ),
                  ],
        )
              ),
               new Divider(color: Colors.grey,),
               new ListTile(
                leading: new CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: new Image(image: new AssetImage("assets/bootstrap.png")),
                ),
                 title: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new Text("Herry Potter")
                      ),
                    
                new RaisedButton(
               onPressed: () {
                  Route route = MaterialPageRoute(builder: (context) => DetailPage());
                  Navigator.push(context, route);
                },
                color: Colors.green,
                child: new Text('Detail'),
                textColor: Colors.white,
               shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(6.0))
              ),
                  ],
        )
              ),
               new Divider(color: Colors.grey,),
               new ListTile(
                leading: new CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: new Image(image: new AssetImage("assets/hp.jpg")),
                ),
                title: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new Text("Herry Potter")
                      ),
                    
                new RaisedButton(
                onPressed: () {
                  Route route = MaterialPageRoute(builder: (context) => DetailPage());
                  Navigator.push(context, route);
                },
                color: Colors.green,
                child: new Text('Detail'),
                textColor: Colors.white,
               shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(6.0))
              ),
                  ],
        )
              ),
               new Divider(color: Colors.grey,),
               new ListTile(
                 leading: new CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: new Image(image: new AssetImage("assets/bootstrap.png")),
                ),
                // title: new Text('Herry Potter',
                // style:new TextStyle(fontWeight: FontWeight.w400),),
                // subtitle: new Text("Software Developer");
                title: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new Text("Herry Potter")
                      ),
                    
                new RaisedButton(
                 onPressed: () {
                  Route route = MaterialPageRoute(builder: (context) => DetailPage());
                  Navigator.push(context, route);
                },
                color: Colors.green,
                child: new Text('Detail'),
                textColor: Colors.white,
               shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(6.0))
              ),
                  ],
        )
              ),
               new Divider(color: Colors.grey,),
               new ListTile(
                 leading: new CircleAvatar(
                  backgroundColor: Colors.blue,
                   child: new Image(image: new AssetImage("assets/hp.jpg")),
                ),
                 title: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new Text("Herry Potter")
                      ),
                    
                new RaisedButton(
                 onPressed: () {
                  Route route = MaterialPageRoute(builder: (context) => DetailPage());
                  Navigator.push(context, route);
                },
                color: Colors.green,
                child: new Text('Detail'),
                textColor: Colors.white,
               shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(6.0))
              ),
                  ],
        )
              ),
               new Divider(color: Colors.grey,),
                new ListTile(
                 leading: new CircleAvatar(
                  backgroundColor: Colors.blue,
                   child: new Image(image: new AssetImage("assets/hp.jpg")),
                ),
                 title: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new Text("Herry Potter")
                      ),
                    
                new RaisedButton(
                onPressed: () {
                  Route route = MaterialPageRoute(builder: (context) => DetailPage());
                  Navigator.push(context, route);
                },
                color: Colors.green,
                child: new Text('Detail'),
                textColor: Colors.white,
               shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(6.0))
              ),
                  ],
        )
              ),
               new ListTile(
                 leading: new CircleAvatar(
                  backgroundColor: Colors.blue,
                   child: new Image(image: new AssetImage("assets/hp.jpg")),
                ),
                 title: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new Text("Herry Potter")
                      ),
                    
                new RaisedButton(
                onPressed: () {
                },
                color: Colors.green,
                child: new Text('Detail'),
                textColor: Colors.white,
               shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(6.0))
              ),
                  ],
        )
              ),
          ],) ,
        ),
    );
    return new  MaterialApp(
      debugShowCheckedModeBanner: false,
       home:new Scaffold(
      appBar: new AppBar(
        title: new Text("Library Page"),
        backgroundColor: Colors.cyan,
        ),
        body: card,
    ),
    );
  }
}
