import 'package:flutter/material.dart';
import 'package:responsive_basic_ui/screen_02.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Layout_Widgets'),
        foregroundColor: Colors.orange,
        //forceMaterialTransparency: true,
        toolbarHeight: 60.2,
        backgroundColor: Colors.grey.shade800,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        elevation: 0.90,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              height: MediaQuery.of(context).size.height * 0.50,
              width: MediaQuery.of(context).size.width * 0.40,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      child: Image.asset(
                        'assets/brain_bulb.jpg',
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: MediaQuery.of(context).size.height * 0.25,
                      ),
                    ),
                    Text(
                      'Container',
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: BeveledRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Sreen02()));
                        },
                        child: Text('Click_me'))
                  ]),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        height: 60.2,
        color: Colors.grey.shade800,
        notchMargin: 10,
        shape: AutomaticNotchedShape(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0))),
          StadiumBorder(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("Floating Action Button Pressed");
        },
        backgroundColor: Colors.orange,
        shape: ShapeBorder.lerp(
          const CircleBorder(),
          const StadiumBorder(),
          0.5,
        ),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
