import 'package:flutter/material.dart';

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _buildStatusHeader(context),
            _buildStatusList(context),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      color: Colors.white,
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
          ),
          Text(
            'My Status',
            style: Theme.of(context).textTheme.headline6,
          ),
        ],
      ),
    );
  }

  Widget _buildStatusList(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        color: Colors.grey[200],
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return _buildStatusTile(context, index);
          },
        ),
      ),
    );
  }

  Widget _buildStatusTile(BuildContext context, int index) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 24.0,
            backgroundImage:
                NetworkImage('https://picsum.photos/seed/picsum/200/300'),
          ),
          SizedBox(width: 12.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'umair shah',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                SizedBox(height: 4.0),
                Text(
                  'Today, 11:30 AM',
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            ),
          ),
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
