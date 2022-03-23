import 'package:credit_clan_interview/constants/colors/index.dart';
import 'package:credit_clan_interview/ui/components/small_circle.dart';
import 'package:flutter/material.dart';

import '../../constants/assets_constants/index.dart';
import '../baseview/index.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool splashScreen =  true;
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        splashScreen=false;
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width:MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Assets.backgroundImg,), fit: BoxFit.cover)
         ),
        child: splashScreen? const SizedBox(width: 0,): Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Smart',
                style: TextStyle(
                  fontFamily: "Libre",
                  color: AppColors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 58
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  'Savings',
                  style: TextStyle(
                      fontFamily: "Libre",
                      fontWeight: FontWeight.w900,
                      color: AppColors.white,
                      fontSize: 58
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SmallCircle(diameter: 10, color: AppColors.red),
                  SmallCircle(diameter: 10, color:AppColors.white.withOpacity(0.3)),
                  SmallCircle(diameter: 10, color:AppColors.white.withOpacity(0.3)),
                  Expanded(child: Container(),),
                  TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const BaseView()));
                    },
                    child: Row(
                      children: const [
                        Text(
                          'Start Now',
                          style: TextStyle(
                              fontFamily: "Std-Medium",
                              color: AppColors.white,
                              letterSpacing: 1.1,
                              fontWeight: FontWeight.w700,
                              fontSize: 18
                          ),
                        ),
                        SizedBox(width: 8,),
                        Icon(Icons.arrow_forward_rounded, size: 20, color: AppColors.white,),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
