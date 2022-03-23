import 'package:credit_clan_interview/ui/components/small_circle.dart';
import 'package:flutter/material.dart';

import '../../../../constants/assets_constants/index.dart';
import '../../../../constants/colors/index.dart';
class DashBoardTopStack extends StatefulWidget {
  const DashBoardTopStack({Key? key}) : super(key: key);

  @override
  _DashBoardTopStackState createState() => _DashBoardTopStackState();
}

class _DashBoardTopStackState extends State<DashBoardTopStack> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 290,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.topLeft,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.backgroundImg),
              fit: BoxFit.cover
            )
          ),
          child: SizedBox(
            height: 110,
              width: 110,
              child: Image.asset(Assets.dashboardBlue)),
        ),
        Positioned(
          top: 30,
          left: 30,
          child: SmallCircle(diameter: 50, color: AppColors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                dashboardDashes(),
                dashboardDashes(),
                dashboardDashes(),
              ],
            ),),
        )
      ],
    );
  }
  Widget dashboardDashes(){
    return Container(
      height: 2,
      width: 25,
      margin: const EdgeInsets.all(2),
      decoration: BoxDecoration(
          color: AppColors.blue,
          borderRadius: BorderRadius.circular(10)
      ),
    );
  }
}
