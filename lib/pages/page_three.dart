import 'package:flutter/material.dart';
import 'package:ostad_flutter_assignments/pages/page_one.dart';
import 'package:ostad_flutter_assignments/pages/page_two.dart';
import 'package:ostad_flutter_assignments/widgets/bottomNavBar.dart';
import 'package:ostad_flutter_assignments/widgets/custom_list_title.dart';
import 'package:ostad_flutter_assignments/widgets/tabs_widgets.dart';

class PageThree extends StatefulWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 2,
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://media.licdn.com/dms/image/C5603AQHkX5-u2txrRQ/profile-displayphoto-shrink_100_100/0/1597431148339?e=1691625600&v=beta&t=6QNyLZtF1FPzNk0TMegoAjJx2opCWuKKYX8kaT25FLQ"),
                ),
                accountName: Text("Faisal A. Salam"),
                accountEmail: Text("faisaltez@gmail.con"),
              ),
              customerListTile(context, const Icon(Icons.home), 'Page One', const PageOne()),
              customerListTile(context, const Icon(Icons.shopping_bag), 'Page Two', const PageTwo()),
              customerListTile(context, const Icon(Icons.person), 'Page Three', const PageThree()),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("Ostad"),
          bottom: TabBar(
            tabs: [
              TabWidget(context, 'Page One', Icon(Icons.home), PageOne()),
              TabWidget(context, 'Page Two', Icon(Icons.shopping_bag), PageTwo()),
              TabWidget(context, 'Page Three', Icon(Icons.person), PageThree()),
            ],
          ),
        ),
        body: Center(
          child: Text(
            "Page Three !!!",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        bottomNavigationBar: BottomNavBar(context, 2),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.orangeAccent,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
