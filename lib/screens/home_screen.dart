import 'package:flutter/material.dart';
import '../colors/app_colors.dart';
import '../widgets/button_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                  text: "Hello",
                  style: TextStyle(
                    color: AppColors.smallTextColor,
                    fontSize: 14,
                  ),
                  children: [
                    TextSpan(
                      text: "\nStart Your Beautiful Day",
                      style: TextStyle(
                        color: AppColors.mainColor,
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
            ),
            ButtonWidget(
              backgroundColor: AppColors.mainColor,
              text: 'Add Task',
              textColor: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonWidget(
              backgroundColor: Colors.white,
              text: 'View ALL',
              textColor: AppColors.smallTextColor,
            ),
          ],
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "assets/welcome.jpg",
            ),
          ),
        ),
      ),
    );
  }
}
