import 'package:credit_clan_interview/ui/components/dollar_text.dart';
import 'package:flutter/material.dart';

import '../../../../constants/assets_constants/index.dart';
import '../../../../constants/colors/index.dart';
import '../../../components/custom_container.dart';
class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        CustomContainer(width: double.infinity, borderRadius: 10,
          height:260,
          padding: const EdgeInsets.all(22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Josuke Jotaro',
                    style: TextStyle(
                      height: 1.5,
                      color: AppColors.deepBlue,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Std-Medium"
                    ),
                  ),
                  Text(
                    '@jojojotaro',
                    style: TextStyle(
                        color: AppColors.deepBlue.withOpacity(0.4),
                        height: 2,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Std-Medium"
                    ),
                  ),
                ],
              ),
              const Divider(height: 60,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Available balance',
                    style: TextStyle(
                        color: AppColors.deepBlue.withOpacity(0.4),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Std-Medium"
                    ),
                  ),
                  SizedBox(
                    height: 16,
                      child: Image.asset(Assets.visa)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  DollarText(text: '12,496.00',
                    style: const TextStyle(
                      height: 1.5,
                      color: AppColors.deepBlue,
                      fontFamily: "Std-Medium",
                      fontWeight: FontWeight.w900,
                      fontSize: 32
                    ),
                  )
                ],
              ),
              Expanded(child: Container()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '****',
                    style: TextStyle(
                        color: AppColors.deepBlue.withOpacity(0.7),
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Std-Medium"
                    ),
                  ),
                  Text(
                    '****',
                    style: TextStyle(
                        color: AppColors.deepBlue.withOpacity(0.7),
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Std-Medium"
                    ),
                  ),
                  Text(
                    '****',
                    style: TextStyle(
                        color: AppColors.deepBlue.withOpacity(0.7),
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Std-Medium"
                    ),
                  ),
                  Text(
                    '2077',
                    style: TextStyle(
                        color: AppColors.deepBlue.withOpacity(0.7),
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Std-Medium"
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Positioned(
          top: -20,
          left: 20,
          child: CustomContainer(borderRadius: 10,
          padding: const EdgeInsets.all(0),
          color: AppColors.peach,
          alignment: Alignment.bottomCenter,
          width: 73,
          height: 100,
          child: Image.asset(Assets.profileImg, fit: BoxFit.fitWidth,),),
        )
      ],
    );
  }
}
