import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<DropdownMenuItem<int>> _menuItems = [];
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    print("横幅の論理ピクセル：$screenWidth");
    print("縦幅の論理ピクセル：$screenHeight");

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                Image.asset("assets/images/image_title.png"),
                SizedBox(
                  height: 50.0,
                ),
                Text("問題数を選択して「スタート」ボタンを押してください"),
                SizedBox(
                  height: 70.0,
                ),
                // TODO
                Expanded(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    //padding: EdgeInsets.only(bottom: 12.0),
                    child: ElevatedButton.icon(
                      icon: Icon(Icons.skip_next),
                      onPressed: () => print("おしたで〜"), //TODO
                      style: ElevatedButton.styleFrom(
                          primary: Colors.brown,
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)))),
                      label: Text("スタート"),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }


}
