import 'package:flutter/material.dart';
import 'package:zoiper/screens/custom_dialer.dart';
import 'package:zoiper/screens/dialer_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          drawer: Drawer(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    bottomRight: Radius.circular(25))),
            backgroundColor: const Color.fromARGB(221, 14, 14, 14),
            width: 250,
            child: ListView(
              children: [
                DrawerHeader(
                  padding: const EdgeInsets.only(left: 0, right: 0),
                  decoration: const BoxDecoration(color: Colors.black),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                        height: 30,
                        color: Colors.lightGreen,
                        child: const Text(
                          "Upgrade to COMBO now!",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12, right: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            const ClipRect(
                              child: Image(
                                image: AssetImage(
                                    "assets/images/zoiperIconblack.jpg"),
                                height: 70,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 190,
                                  child: const Text(
                                    "NickChristo@gmail.com",
                                    style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Account is ready",
                              style: TextStyle(color: Colors.lightGreen),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.grey,
                  ),
                  title: Text(
                    "Setting",
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.navigate_next,
                    color: Colors.grey,
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.record_voice_over,
                    color: Colors.grey,
                  ),
                  title: Text(
                    "Call recording",
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.navigate_next,
                    color: Colors.grey,
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.warning,
                    color: Colors.grey,
                  ),
                  title: Text(
                    "Warnings",
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.navigate_next,
                    color: Colors.grey,
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.star,
                    color: Colors.grey,
                  ),
                  title: Text(
                    "Premium features",
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.navigate_next,
                    color: Colors.grey,
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.share,
                    color: Colors.grey,
                  ),
                  title: Text(
                    "Follow us",
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.navigate_next,
                    color: Colors.grey,
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.translate,
                    color: Colors.grey,
                  ),
                  title: Text(
                    "Translate",
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.navigate_next,
                    color: Colors.grey,
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.info,
                    color: Colors.grey,
                  ),
                  title: Text(
                    "Information",
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.navigate_next,
                    color: Colors.grey,
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.info_rounded,
                    color: Colors.grey,
                  ),
                  title: Text(
                    "About",
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.navigate_next,
                    color: Colors.grey,
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.exit_to_app,
                    color: Colors.grey,
                  ),
                  title: Text(
                    "Exit",
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.navigate_next,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(95),
            child: AppBar(
              centerTitle: false,
              automaticallyImplyLeading: false,
              titleSpacing: 0,
              backgroundColor: Colors.orange,
              leading: Container(
                height: 50,
                margin: const EdgeInsets.only(left: 15, bottom: 3, top: 5),
                color: Colors.white,
                width: 200,
                child: Builder(
                  builder: (BuildContext context) {
                    return IconButton(
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.black54,
                        size: 18,
                      ),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      tooltip: MaterialLocalizations.of(context)
                          .openAppDrawerTooltip,
                    );
                  },
                ),
              ),
              title: Container(
                margin: const EdgeInsets.only(right: 15, top: 4),
                height: 50,
                child: const TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    border: InputBorder.none,
                    filled: true,
                    hintText: "Search",
                    // focusedBorder:
                    //     OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
              bottom: const TabBar(indicatorColor: Colors.white, tabs: [
                // Icon(Icons.star),
                Icon(Icons.history),
                Icon(Icons.person),
                // Icon(Icons.message)
              ]),
            ),
            // child: AppBar(
            //   iconTheme: IconThemeData(color: Colors.grey),
            //   flexibleSpace: Container(
            //     decoration: BoxDecoration(

            //         // image: DecorationImage(
            //         //     image: AssetImage("assets/images/appbar.jpg"))
            //         ),
            //   ),
            //   title: Container(
            //     width: MediaQuery.of(context).size.width * 1,
            //     child: TextFormField(
            //       decoration: InputDecoration(
            //         border: InputBorder.none,
            //         fillColor: Colors.white,
            //         filled: true,
            //         focusColor: Colors.blueGrey,
            //         hintText: "Search ...",
            //       ),
            //     ),
            //   ),
            //   //     title: TextField(
            //   //  decoration: InputDecoration(
            //   //   hintText: "Search",
            //   //   focusedBorder: OutlineInputBorder(),
            //   //  ),
            //   //     ),
            //   backgroundColor: Colors.orange,
            //   bottom: TabBar(indicatorColor: Colors.white, tabs: [
            //     // Icon(Icons.star),
            //     Icon(Icons.history),
            //     Icon(Icons.person),
            //     // Icon(Icons.message)
            //   ]),
            // ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => CustomDialer()));
            },
            backgroundColor: Colors.orange,
            child: const Icon(Icons.grid_view),
          ),
          body: TabBarView(children: [
            // Container(
            //   height: 20,
            //   color: Colors.black87,
            // ),
            Container(
                height: 20,
                color: Colors.white,
                child: const Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.lightGreen,
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      ),
                      title: Text("+92 340 7490861"),
                      subtitle: Row(
                        children: [
                          Icon(
                            Icons.call_made,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.call_made,
                            color: Colors.yellow,
                          ),
                          Text("Custom, 6 days ago")
                        ],
                      ),
                      trailing: Icon(Icons.call),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.lightGreen,
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      ),
                      title: Text("+92 340 7490861"),
                      subtitle: Row(
                        children: [
                          Icon(
                            Icons.call_made,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.call_made,
                            color: Colors.yellow,
                          ),
                          Text("Custom, 6 days ago")
                        ],
                      ),
                      trailing: Icon(Icons.call),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.lightGreen,
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      ),
                      title: Text("+92 340 7490861"),
                      subtitle: Row(
                        children: [
                          Icon(
                            Icons.call_made,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.call_made,
                            color: Colors.yellow,
                          ),
                          Text("Custom, 6 days ago")
                        ],
                      ),
                      trailing: Icon(Icons.call),
                    ),
                  ],
                )),
            Container(
              margin: const EdgeInsets.all(70),
              height: 600,
              width: 200,
              color: Colors.blue,
            ),
            // Container(
            //   height: 20,
            //   color: Colors.red,
            // )
          ]),
        ));
  }
}
