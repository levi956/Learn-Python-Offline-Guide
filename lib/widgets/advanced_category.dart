import 'package:flutter/material.dart';
import 'package:python_cheat_sheet_app/models/advanced_category_model.dart';

class Advanced extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 120,
        //width: 200,
        child: GridView.builder(
          itemCount: AdvancedCategoryData.length,
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
                  Navigator.pushNamed(context, '/ObjectOriented_screen');
                if (index == 1)
                  Navigator.pushNamed(context, '/SortingAlgo_screen');
                if (index == 2)
                  Navigator.pushNamed(context, '/ErrorExcept_screen');
              },
              child: Container(
                height: 100,
                child: Image(
                  image: AssetImage(advanced[index].image),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
