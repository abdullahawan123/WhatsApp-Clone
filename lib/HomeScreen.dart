import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('WhatsApp'),
            centerTitle: false,
            backgroundColor: Colors.teal,
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.camera_alt),
                ),
                Tab(
                  child: Text('Chat'),
                ),
                Tab(
                  child: Text('Status'),
                ),
                Tab(
                  child: Text('Call'),
                ),
              ],
            ),
            actions: [
              const Icon(Icons.search),
              const SizedBox(width: 10,),
              PopupMenuButton(
                icon: const Icon(Icons.more_vert),
                  itemBuilder: (context,)=>const [
                    PopupMenuItem(
                      value: '1',
                      child: Text('New Group'),
                    ),
                    PopupMenuItem(
                      value: '2',
                      child: Text('Setting'),
                    ),
                    PopupMenuItem(
                      value: '3',
                      child: Text('Logout'),
                    ),
                  ]
              ),
              const SizedBox(width: 10,),
            ],
          ),
          body:  TabBarView(
            children: [
              const Text('Camera'),

              ListView.builder(
                itemCount: 10,
                itemBuilder: (context ,index){
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/john.jpg'),
                    ),
                    title: Text('John Wick'),
                    subtitle: Text('Hy! I m using this app \nIts very cool'),
                    trailing: Text('5:14 pm'),
                  );
                },

              ),
              ListView.builder(
              itemCount: 3,
              itemBuilder: (context ,index){

                if(index==0){
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('New Updates'),
                        ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.greenAccent,
                                  width: 5,
                                )
                            ),
                            child: const CircleAvatar(
                              backgroundImage: AssetImage('assets/john.jpg'),
                            ),
                          ),
                          title: const Text('My Status'),
                          subtitle: const Text('5 second ago'),

                        ),
                      ],
                    ),
                  );
                }else{
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Old Updates'),
                        ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.greenAccent,
                                  width: 5,
                                )
                            ),
                            child: const CircleAvatar(
                              backgroundImage: AssetImage('assets/profile2.jpg'),
                            ),
                          ),
                          title: const Text('Hamza Shahbaz'),
                          subtitle: const Text('25 min ago'),

                        ),
                      ],
                    ),
                  );
                }

              },
            ),
              ListView.builder(
                itemCount: 10,
                itemBuilder: (context ,index){
                  return ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: AssetImage('assets/john.jpg'),
                    ),
                    title: const Text('John Wick'),
                    subtitle: Text(index/2==0 ? 'You have missed audio call' : 'You have missed video call'),
                    trailing: index/2==0 ? const Icon(Icons.call) : const Icon(Icons.video_call),
                  );
                },

              ),
            ],
          ),
        )
    );
  }
}
