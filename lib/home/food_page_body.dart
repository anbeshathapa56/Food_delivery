import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/utilities/colors.dart';
import 'package:fooddelivery/widgets/Big_test.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  _FoodPageBodyState createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController= PageController(viewportFraction: 0.9);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      height: 320,
      child: PageView.builder(
        itemCount: 5,
          itemBuilder: (context, position){
        return _buildPageItem(position);
      }),

    );
  }
  Widget _buildPageItem(int index){
    return Stack(
      children: [
        Container(
          height: 220,
          margin: const EdgeInsets.only(left:5, right: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: index.isEven?const Color(0xFF69c5df):const Color(0xFF9294cc),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                      "assets/image/food2.jpg"
                  )
              )
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 140,
            margin: const EdgeInsets.only(left:30, right: 30, bottom: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white ,

            ),
            child: Container(
              padding: EdgeInsets.only(top: 10, left: 15, right: 15),
              child: Column(
                children: [
                  BigText(text: "Nepalese Side"),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(5, (index) => Icon(Icons.star, color: AppColors.mainColor, size: 15,)),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
