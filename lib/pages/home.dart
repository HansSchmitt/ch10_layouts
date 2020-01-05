import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final Color defaultText = Colors.grey.shade700;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layouts', style: TextStyle(color: Colors.black87),),
        leading: Icon(Icons.menu,),
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.black54),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.cloud,),
          ),
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody(){
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _buildJournalHeaderImage(),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  _buildJournalEntry(),
                  Divider(),
                  _buildJournalWeather(),
                  Divider(),
                  _buildJournalTags(),
                  Divider(),
                  _buildJournalFooterImages(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildJournalHeaderImage(){
    return Image(
      image: AssetImage('assets/images/gift.jpg'),
      fit: BoxFit.cover,
    );
  }

  Widget _buildJournalEntry(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'My Birthday',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 32.0,
          ),
        ),
        Divider(),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', style: TextStyle(color: defaultText),
        ),
      ],
    );
  }

  Widget _buildJournalWeather(){
    return Row(
      children: <Widget>[
        Icon(Icons.wb_sunny, color: Colors.orange,),
        Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '81 deg Clear',
                style: TextStyle(color: Colors.orange,
                ),
              ),
              Text(
                '4500 San Alpho Drive, Dallas, TX United States',
                style: TextStyle(color: defaultText),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildJournalTags(){
    return Wrap(
      spacing: 8.0,
      children: List.generate(7, (int index) {
        return Chip(
          label: Text('Gift $index'),
          avatar: Icon(
            Icons.card_giftcard,
            color: Colors.blue,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
            side: BorderSide(color: Colors.grey),
          ),
          backgroundColor: Colors.grey.shade200,
        );
      })
    );
  }

  Widget _buildJournalFooterImages(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        CircleAvatar(
          radius: 36.0,
          backgroundImage: AssetImage('assets/images/steak.jpeg'),
        ),
        CircleAvatar(
          radius: 36.0,
          backgroundImage: AssetImage('assets/images/pasta.jpeg'),
        ),
        CircleAvatar(
          radius: 36.0,
          backgroundImage: AssetImage('assets/images/strawberries.jpeg'),
        ),
        SizedBox(

        )
      ],
    );
  }

}

