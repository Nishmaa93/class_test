import 'package:flutter/material.dart';
 
class GridViewScreen extends StatefulWidget {
  @override
  _GridViewScreenState createState() => _GridViewScreenState();
}
 
class _GridViewScreenState extends State<GridViewScreen> {
  List<String> nameCharacters = ['L', 'a', 'l', 'i', 't'];
  List<bool> buttonVisibility = List.filled(5, true);
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Name Buttons'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.count(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 3,
          children: List.generate(
            nameCharacters.length,
            (index) => AnimatedOpacity(
              opacity: buttonVisibility[index] ? 1.0 : 0.0,
              duration: Duration(milliseconds: 500),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (buttonVisibility[index]) {
                      buttonVisibility[index] = false;
                    } else {
                      buttonVisibility[index] = true;
                    }
                  });
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.green; // change to desired color
                      }
                      return Colors.orange; // default color
                    },
                  ),
                ),
                child: Text(nameCharacters[index]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}