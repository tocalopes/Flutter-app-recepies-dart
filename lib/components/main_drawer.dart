import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  
  Widget _createItem(IconData icon, String label){
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        label,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold
        ),
      ),
      onTap: (){},
    );
  }
  
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Drawer(
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: mediaQuery.size.height * 0.15,
            width: mediaQuery.size.width,
            child: Text(
              'Vamos cozinhar?',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).primaryColor
              ),
            ),
            color: Theme.of(context).accentColor,
          ),
          SizedBox(height: mediaQuery.size.height * 0.05),
          _createItem(Icons.restaurant, 'Refeições'),
          _createItem(Icons.settings, 'Configurações'),
        ],
      ),
    );
  }
}
