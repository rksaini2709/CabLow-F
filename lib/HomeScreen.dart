import 'package:cablow/widgets/widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 185,
              child: UserAccountsDrawerHeader(
                accountName: null,
                accountEmail: null,
                currentAccountPicture:
                    Image.asset("asset/image/Verification.png"),
                decoration: const BoxDecoration(
                  color: Colors.blue
                ),
              ),
            ),
            ListTile(
              title: const Text("Name"),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Mobile Number"),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Email"),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("Admin Pannel"),
        centerTitle: true,
        backgroundColor: Colors.purple[100],
      ),
      body: Center(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: PrimaryBtn(btnName: "choose user", onTap: () {}),
      )),
    );
  }
}
