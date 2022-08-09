import 'package:flutter/material.dart';
import 'package:koraplay/models/onboard_model.dart';
import 'package:koraplay/ui/shared/app_colors.dart';
import 'package:koraplay/ui/shared/ui_helpers.dart';
import 'package:koraplay/ui/widget/app_text.dart';
import 'package:koraplay/ui/widget/responsive_button.dart';
import 'package:provider/provider.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

final _controller = PageController();
int _currentPage = 0;

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    final onboardData = Provider.of<OnboardItemsModel>(context, listen: false);
    return Scaffold(
      body: PageView.builder(
          controller: _controller,
          scrollDirection: Axis.horizontal,
          itemCount: onboardData.items.length,
          itemBuilder: (_, index) {
            return Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: double.infinity,
                  color: primaryColor,
                  child: Image.asset(onboardData.items[index].imgUrl),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppText(
                      text: onboardData.items[index].title,
                      size: 33,
                      color: Colors.black,
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: 250,
                      child: AppText(
                        text: onboardData.items[index].description,
                        color: AppColors.textColor2,
                      ),
                    ),
                  ],
                ),
                verticalSpaceMedium,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (indexDot) {
                    return Container(
                      margin: const EdgeInsets.all(2),
                      height: 10,
                      width: index == indexDot ? 25 : 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: index == indexDot
                            ? AppColors.mainColor
                            : AppColors.mainColor.withOpacity(0.5),
                      ),
                    );
                  }),
                ),
                verticalSpaceMedium,
                ResponsiveButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/mainPage');
                  },
                  width: MediaQuery.of(context).size.width * 0.8,
                ),
              ],
            );
          },
          onPageChanged: (value) {
            setState(
              () {
                _currentPage = value;
              },
            );
          }),
    );
  }
}


// decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage(onboardData.items[index].imgUrl),
//                   fit: BoxFit.cover,
//                 ),
//               ),


