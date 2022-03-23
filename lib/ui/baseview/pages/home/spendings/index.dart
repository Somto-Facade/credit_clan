import 'package:credit_clan_interview/ui/baseview/pages/home/spendings/chart.dart';
import 'package:credit_clan_interview/ui/components/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../constants/assets_constants/index.dart';
import '../../../../../constants/colors/index.dart';
import '../../../../components/dollar_text.dart';
class Spending extends StatefulWidget {
  const Spending({Key? key}) : super(key: key);

  @override
  _SpendingState createState() => _SpendingState();
}
int idx = 0;
List<String> header = [
  'Day',
  'Week',
  'Month',
  'Custom'
];

class _SpendingState extends State<Spending> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50,),
            IconButton(onPressed: (){
              Navigator.pop(context);
            },
                icon: const Icon(Icons.arrow_back_ios_outlined, color: AppColors.blue,)),
            const SizedBox(height: 35,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Spendings',
                    style: TextStyle(
                        color: AppColors.deepBlue.withOpacity(0.7),
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Std-Medium"
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      DollarText(text: '2,400.56',
                        style: const TextStyle(
                            height: 1.5,
                            color: AppColors.deepBlue,
                            fontFamily: "Std-Medium",
                            fontWeight: FontWeight.w900,
                            fontSize: 36
                        ),
                      ),
                      const SizedBox(width: 5,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(Icons.arrow_drop_down_sharp, color: AppColors.lightGreen,),
                              Text(
                                '12%',
                                style: TextStyle(
                                    color: AppColors.lightGreen,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Std-Medium"
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '   vs past month',
                            style: TextStyle(
                                color: AppColors.deepBlue.withOpacity(0.4),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Std-Medium"
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(header.length, (index) => Material(
                        borderRadius: BorderRadius.circular(100),
                        color: AppColors.blue.withOpacity(0),
                        child: InkWell(
                          onTap:(){
                            setState(() {
                              idx =index;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                              decoration: BoxDecoration(
                                  color: index == idx? AppColors.purple: Colors.transparent,
                                  borderRadius: BorderRadius.circular(60)),
                              child: Text(
                                header[index],
                                style: TextStyle(
                                  color:index==idx? AppColors.white: AppColors.deepBlue.withOpacity(0.4),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Std-Medium"
                                ),
                              )),
                        ),
                      ))
                    ),
                  ),
                  const Chart(),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Scheduled payments',
                        style: TextStyle(
                            color: AppColors.deepBlue.withOpacity(0.8),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Std-Medium"
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_outlined, color: AppColors.deepBlue.withOpacity(0.8), size: 12,)
                    ],
                  ),
                  const Divider(
                    height: 30,
                  ),
                  paymentCard(assetName: Assets.youtube, containerColor: AppColors.red, header: 'Youtube Red', nextPayment: '12/02', sub: 3.99),
                  paymentCard(assetName: Assets.github, containerColor: Colors.black, header: 'Github', nextPayment: '12/02', sub: 2.99),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget paymentCard({
    required String assetName,
    required Color containerColor,
    required String header,
    required String nextPayment,
    required double sub,
  }){
    return SizedBox(
      height: 90,
      child: Column(
        children: [
          Expanded(child: Container()),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomContainer(width: 70, borderRadius: 8, color: containerColor,
                  height: 60,
                  padding: const EdgeInsets.all(15),
                  child: SvgPicture.asset(assetName,)),
              const SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    header,
                    style: const TextStyle(
                        color: AppColors.deepBlue,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Std-Medium"
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Text(
                    'Next payment: $nextPayment',
                    style: TextStyle(
                        color: AppColors.deepBlue.withOpacity(0.4),
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Std-Medium"
                    ),
                  ),
                ],
              ),
              Expanded(child: Container()),
              DollarText(text: '$sub/mth',
                style: TextStyle(
                  color: AppColors.deepBlue.withOpacity(0.7),
                  fontWeight: FontWeight.w700,
                  fontSize: 18
                ),
              )
            ],
          ),
          Expanded(child: Container()),
          const Divider(height: 2,)
        ],
      ),
    );
  }
}
