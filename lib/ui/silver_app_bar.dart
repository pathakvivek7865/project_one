import 'package:flutter/material.dart';

class MySilverAppBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MySilverAppBarState();
  }
}

class _MySilverAppBarState extends State<MySilverAppBar> {
  Choice _selectedChoice = choices[0];

  @override
  Widget build(BuildContext context) {
    print(_selectedChoice);

    return SliverAppBar(
      //primary: true,
      floating: true,
      //pinned: false,
      snap: true,
      automaticallyImplyLeading: false,
      iconTheme: Theme.of(context).iconTheme,
      textTheme: Theme.of(context).textTheme,
      title: const Text(
        'My App',
        style: TextStyle(fontSize: 22.0),
      ),
      forceElevated: true, //innerBoxIsScrolled,
      backgroundColor: Colors.white,
      leading: new Builder(builder: (BuildContext context) {
        return new IconButton(
            //color: Colors.black,
            icon: new Icon(
              Icons.menu,
              size: 28.0,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            });
      }),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.search,
            size: 26.0,
          ),
          onPressed: () {},
        ),
        PopupMenuButton(
          icon: Icon(
            Icons.sort,
            size: 26.0,
            //color: Colors.black,
          ),
          itemBuilder: (BuildContext context) {
            return choices.map((Choice choice) {
              return PopupMenuItem<Choice>(
                child: Text(choice.title),
                value: choice,
              );
            }).toList();
          },
          onSelected: _select,
        )
      ],
    );
  }

  void _select(Choice choice) {
    setState(() {
      _selectedChoice = choice;
    });
  }
}

class Choice {
  final String title;

  const Choice({this.title});
}

const List<Choice> choices = const <Choice>[
  const Choice(title: "Sort by: Time"),
  const Choice(title: "Sort by: Follower")
];
