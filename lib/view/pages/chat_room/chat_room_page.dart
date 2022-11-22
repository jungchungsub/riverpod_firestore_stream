import 'package:flutter/material.dart';

class ChatRoomPage extends StatelessWidget {
  const ChatRoomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildListView(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text("riverpod & firestore & stream"),
    );
  }

  ListView _buildListView() {
    return ListView.separated(
      itemCount: 2,
      itemBuilder: (context, index) => ListTile(
        title: Text("from: ssar"),
        subtitle: Text("from ssar"),
      ),
      separatorBuilder: (context, index) => Divider(),
    );
  }
}
