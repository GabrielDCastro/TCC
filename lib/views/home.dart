import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  State<Home> createState(){
    return HomeState();
  }
}

class HomeState extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
               accountName: Text('Gabriel'),
               accountEmail: Text('gabriel@gmail')
               ),
            ListTile(
              leading: Icon(Icons.book_online),
              title: Text('Cursos', style: TextStyle(color: Colors.purple)),
              onTap: (){
                Navigator.of(context).pushNamed('/cursos');
              },    
            ),
            ListTile(
              leading: Icon(Icons.wysiwyg),
              title: Text('Certificados', style: TextStyle(color: Colors.purple)),
            ),
            ListTile(
              leading: Icon(Icons.class__outlined),
              title: Text('Monitorias', style: TextStyle(color: Colors.purple)),
              onTap: (){
                Navigator.of(context).pushNamed('/monitorias');
              },  
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Monitores', style: TextStyle(color: Colors.purple)),
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text('Perfil', style: TextStyle(color: Colors.purple)),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout', style: TextStyle(color: Colors.purple)),
              onTap: (){
                Navigator.of(context).pushReplacementNamed('/');
              },              
            ),
          ],
        ),
      ),
      appBar: AppBar( 
        title: Text('Home'),

      ),
    );
  }
}