import 'package:credit_clan_interview/ui/baseview/pages/home/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/assets_constants/index.dart';
import '../../constants/colors/index.dart';

class BaseView extends StatefulWidget {
  const BaseView({Key? key,}) : super(key: key);

  @override
  _BaseViewState createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> {
  int idx = 0;

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: IndexedStack(index: idx, children: [
          const HomePage(),
          Center(child: Text('$idx'),),
          Center(child: Text('$idx'),),
        ]
        ),
        bottomNavigationBar: Container(
          height: 84,
          width: double.infinity,
          decoration:
          BoxDecoration(color: AppColors.white, 
            boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                offset: const Offset(8, 0),
                blurRadius: 8)
          ],
          ),
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  idx=0;
                  setState(() {});
                },
                  child: SvgPicture.asset(Assets.home, color: idx==0? AppColors.purple: AppColors.deepBlue.withOpacity(0.2),)),
              GestureDetector(
                  onTap: (){
                    idx=1;
                    setState(() {});
                  },
                  child: SvgPicture.asset(Assets.notification, color: idx==1? AppColors.purple: AppColors.deepBlue.withOpacity(0.5),)),
              GestureDetector(
                  onTap: (){
                    idx=2;
                    setState(() {  });
                  },
                  child: SvgPicture.asset(Assets.message, color: idx==2? AppColors.purple: AppColors.deepBlue.withOpacity(0.5),)),
            ],
          ),
        ),
      );
  }
}


