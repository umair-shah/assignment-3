import 'package:flutter/material.dart';

class SkypeHomePage extends StatefulWidget {
  const SkypeHomePage({Key? key}) : super(key: key);

  @override
  _SkypeHomePageState createState() => _SkypeHomePageState();
}

class _SkypeHomePageState extends State<SkypeHomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.chat_bubble_outline),
          label: 'Chats',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.group_outlined),
          label: 'Groups',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.call_outlined),
          label: 'Calls',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Profile',
        ),
      ],
    );
  }

  Widget _buildBody() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildAppBar(),
            _buildTopSection(),
            _buildDivider(),
            _buildContacts(),
            _buildDivider(),
            _buildRecentChats(),
          ],
        ),
      ),
    );
  }

  Widget _buildRecentChats() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            'RECENT CHATS',
            style: TextStyle(
              color: Colors.grey.shade700,
              fontWeight: FontWeight.bold,
              fontSize: 12,
              letterSpacing: 0.5,
            ),
          ),
        ),
        _buildContactRow(
          'John Doe',
          'assets/images/avatar.jpg',
          '20m ago',
        ),
        const SizedBox(height: 16),
        _buildContactRow(
          'Jane Smith',
          'assets/images/avatar.jpg',
          '2m ago',
        ),
        const SizedBox(height: 16),
        _buildContactRow(
          'Bob Johnson',
          'assets/images/avatar.jpg',
          '1h ago',
        ),
      ],
    );
  }

  Widget _buildAppBar() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Image.asset(
            'assets/images/logo.jpg',
            width: 40,
            height: 40,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              'Skype',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
    );
  }

  Widget _buildTopSection() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          const Text(
            'Keep your conversations going',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 16),
          _buildButtonRow(),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildButtonRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildButton('Call', Icons.call),
        _buildButton('Chat', Icons.chat),
        _buildButton('Meet Now', Icons.meeting_room),
      ],
    );
  }

  Widget _buildButton(String label, IconData icon) {
    return Expanded(
      child: OutlinedButton.icon(
        onPressed: () {},
        icon: Icon(icon),
        label: Text(label),
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return Divider(
      height: 1,
      color: Colors.grey[400],
    );
  }

  Widget _buildContacts() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          Text(
            'Contacts',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          const SizedBox(height: 16),
          _buildContactRow(
            'umair shah',
            'assets/images/avatar.jpg',
            'Active now',
          ),
          const SizedBox(height: 16),
          _buildContactRow(
            'huzaifa mehmood',
            'assets/images/avatar.jpg',
            '2m ago',
          ),
          const SizedBox(height: 16),
          _buildContactRow(
            'saad khan',
            'assets/images/avatar.jpg',
            '2m ago',
          ),
          const SizedBox(height: 16),
          _buildContactRow(
            'abdullah',
            'assets/images/avatar.jpg',
            '6m ago',
          ),
          const SizedBox(height: 16),
          _buildContactRow(
            'Wali',
            'assets/images/avatar.jpg',
            '10m ago',
          ),
          const SizedBox(height: 16),
          _buildContactRow(
            'dilawar khan',
            'assets/images/avatar.jpg',
            '15m ago',
          ),
        ],
      ),
    );
  }

  Widget _buildContactRow(String name, String avatarPath, String time) {
    return ListTile(
      leading: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          image: DecorationImage(
            image: AssetImage(avatarPath),
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: Text(
        name,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
      subtitle: Text(
        'Active $time',
        style: TextStyle(fontSize: 14),
      ),
    );
  }
}
