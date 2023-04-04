import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(15, 85, 15, 15),
              color: Colors.grey.withOpacity(0.1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("images/img.png"),
                  ),
                  Text(
                    "Shahidullah",
                    style: myStyle(18, Colors.black54),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "  Your Score",
                          style: myStyle(14, Colors.black, FontWeight.bold),
                        ),
                        Text(
                          "200",
                          style: myStyle(14, Colors.amber, FontWeight.bold),
                        ),
                        Icon(Icons.keyboard_arrow_right),
                      ],
                    ),
                    height: 35,
                    width: 140,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0.0, 30),
                          blurRadius: 35.0,
                          color: Colors.black12,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            "1265",
                            style: myStyle(22, Colors.black54),
                          ),
                          Text(
                            "Created",
                            style: myStyle(14, Colors.black54),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "72",
                            style: myStyle(22, Colors.black54),
                          ),
                          Text(
                            "Downloaded",
                            style: myStyle(14, Colors.black54),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "256",
                            style: myStyle(22, Colors.black54),
                          ),
                          Text(
                            "Uploaded",
                            style: myStyle(14, Colors.black54),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.fromLTRB(12, 15, 12, 0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "My Wallet",
                            style: myStyle(18, Colors.black, FontWeight.bold),
                          ),
                          Text(
                            "\$95.64",
                            style: myStyle(18, Colors.amber, FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  DrawerItem(
                    title: "My Trips",
                    onTap: () {},
                  ),
                  DrawerItem(
                    title: "Invite Friends",
                    onTap: () {},
                  ),
                  DrawerItem(
                    title: "Promotions",
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          Divider(
            thickness: 1,
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(8),
              width: double.infinity,
              child: Column(

                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text("Settings", style: myStyle(18, Colors.black54),),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text("User Guide", style: myStyle(18, Colors.black54),),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  DrawerItem({
    this.title,
    this.onTap,
    Key? key,
  }) : super(key: key);

  String? title;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "${title}",
              style: myStyle(18, Colors.black, FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

myStyle(double fz, Color clr, [FontWeight? fw]) {
  return TextStyle(fontSize: fz, color: clr, fontWeight: fw);
}
