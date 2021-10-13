import 'package:flutter/material.dart';
import 'package:python_cheat_sheet_app/models/intermediate_category_model.dart';

class Intermediate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 120,
        //width: 200,
        child: GridView.builder(
          itemCount: IntermediateCategoryData.length,
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisSpacing: 15,
          ),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                if (index == 0) Navigator.pushNamed(context, '/Func_screen');
                if (index == 1) Navigator.pushNamed(context, '/Key_screen');
                if (index == 2) Navigator.pushNamed(context, '/List_screen');
                if (index == 3) Navigator.pushNamed(context, '/Loops_screen');
                if (index == 4) Navigator.pushNamed(context, '/Dict_screen');
                if (index == 5) Navigator.pushNamed(context, '/String_screen');
              },
              child: Container(
                height: 100,
                child: Image(
                  image: AssetImage(intermediate[index].image),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
