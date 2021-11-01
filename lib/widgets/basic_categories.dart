import 'package:flutter/material.dart';
import 'package:python_cheat_sheet_app/models/basic_category_model.dart';

class Basics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 120,
        //width: 200,
        child: GridView.builder(
          itemCount: BasicCategoryData.length,
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisSpacing: 15,
          ),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                if (index == 0)
                  Navigator.pushNamed(context, '/Introduction_screen');
                if (index == 1)
                  Navigator.pushNamed(context, '/Variables_screen');
                if (index == 2)
                  Navigator.pushNamed(context, '/ArithmeticOperators_screen');
                if (index == 3)
                  Navigator.pushNamed(context, '/DataTypes_screen');
                if (index == 4)
                  Navigator.pushNamed(context, '/ControlFlow_screen');
              },
              child: Container(
                height: 100,
                child: Image(
                  image: AssetImage(basics[index].image),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
