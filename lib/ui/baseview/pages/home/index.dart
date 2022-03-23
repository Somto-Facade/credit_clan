import 'package:credit_clan_interview/ui/baseview/pages/home/dashboard.dart';
import 'package:credit_clan_interview/ui/baseview/pages/home/homepage_stack.dart';
import 'package:credit_clan_interview/ui/baseview/pages/home/spendings/index.dart';
import 'package:flutter/material.dart';
import '../../../../constants/assets_constants/index.dart';
import '../../../../constants/colors/index.dart';
import '../../../components/dollar_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              const DashBoardTopStack(),
              Expanded(child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    const SizedBox(height: 170,),
                    SizedBox(
                      height: 150,
                      child: Row(
                        children: [
                          Expanded(child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 60,
                                  child: Image.asset(Assets.cashback)),
                              Text(
                                'Cashback',
                                style: TextStyle(
                                    color: AppColors.deepBlue.withOpacity(0.4),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Std-Medium"
                                ),
                              ),
                            DollarText(text: '220.54',
                              style: const TextStyle(
                                  color: AppColors.deepBlue,
                                  fontFamily: "Std-Medium",
                                  fontWeight: FontWeight.w900,
                                  fontSize: 24
                              ),
                            ),
                            ],
                          ),),
                          const VerticalDivider(width: 40,),
                          Expanded(child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  height: 60,
                                  child: Image.asset(Assets.safeDeposit)),
                              Text(
                                'Safe Deposit',
                                style: TextStyle(
                                    color: AppColors.deepBlue.withOpacity(0.4),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Std-Medium"
                                ),
                              ),
                              DollarText(text: '12,800.64',
                                style: const TextStyle(
                                    color: AppColors.deepBlue,
                                    fontFamily: "Std-Medium",
                                    fontWeight: FontWeight.w900,
                                    fontSize: 24
                                ),
                              ),
                            ],
                          ),),
                        ],
                      ),
                    ),
                    const SizedBox(height: 50,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Today',
                          style: TextStyle(
                              color: AppColors.deepBlue.withOpacity(0.8),
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Std-Medium"
                          ),
                        ),
                        const SizedBox(width: 10,),
                        SizedBox(
                          width: 13,
                            child: Image.asset(Assets.downArrow)),
                      ],
                    ),
                    const Divider(
                      height: 35,
                    ),
                    const SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Steam Store',
                          style: TextStyle(
                              color: AppColors.deepBlue,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Std-Medium"
                          ),
                        ),
                        Text(
                          '-\$19.99',
                          style: TextStyle(
                              color: AppColors.red,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Std-Medium"
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )),
            ],
          ),
          Positioned(
            top: 160,
            left: 25,
            right: 25,
            child: GestureDetector(
                onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const Spending()));
              },
                child: const Dashboard())
          )
        ],
      ),
    );
  }
}
