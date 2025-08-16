import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4, child: Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp'),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 10),
          PopupMenuButton( itemBuilder: (context)=>[
            PopupMenuItem(value: 1,child: Text('Camera')),
            PopupMenuItem(value: 1,child: Text('New group')),
            PopupMenuItem(value: 1,child: Text('Sitting')),
            PopupMenuItem(value: 1,child: Text('Logout')),
          ]),
        ],
        bottom: TabBar(
            tabs: [
              Text('Chat'),
              Text('Group'),
              Text('Status'),
              Text('Call'),


          // TextField(
          //   decoration: InputDecoration(
          //     prefixIcon: Icon(Icons.search),
          //     border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          //
          //     labelText: '',
          //   ),
          // ),


        ]),

        backgroundColor: Colors.grey.shade200,
      ),
      body: TabBarView(children: [
        ListView.builder(itemCount: 100,
        itemBuilder: (context,index){
          return ListTile(
            leading: CircleAvatar(
              child: Image(image: AssetImage('assets/1.jpg')),
            ),
            title: Text('Ahmad'),
            subtitle: Text('My Message is received.'),
            trailing: Text('6:30 pm'),
          );
        },
        ),
        ListView.builder(itemCount: 100,
          itemBuilder: (context,index){
            return ListTile(
              leading: CircleAvatar(
                child: Image(image: AssetImage('assets/1.jpg')),
              ),
              title: Text('Group'),
              subtitle: Text('Add new member'),
              trailing: Icon(index%3==0 ? Icons.group_add : Icons.group),
            );
          },
        ),
        ListView.builder(itemCount: 100,
          itemBuilder: (context,index){
            return ListTile(
              leading: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.green,
                    width: 3,
                  ),
                ),
                child: CircleAvatar(
                  child: Image(image: AssetImage('assets/1.jpg')),
                ),
              ),
              title: Text('Ahmad'),
              subtitle: Text(index%2==0? '2:30':'9:00'),

            );
          },
        ),
        ListView.builder(itemCount: 100,
          itemBuilder: (context,index){
            return ListTile(
              leading: CircleAvatar(
                child: Image(image: AssetImage('assets/1.jpg')),
              ),
              title: Text('Ahmad'),
              subtitle: Text(index%3==0 ?'you have missed vedio call':'Youe have missed audio call'),
              trailing: Icon(index%3==0 ? Icons.video_call : Icons.call),
            );
          },
        ),
      ]),

    ));
  }
}
