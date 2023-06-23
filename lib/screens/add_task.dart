import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../colors/app_colors.dart';
import '../widgets/textfield_widget.dart';
import '../widgets/button_widget.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController detailController = TextEditingController();
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: const EdgeInsets.only(left: 20, right: 20),
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/addtask1.jpg"),
          ),
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: AppColors.secondaryColor,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  TextFieldWidget(
                    textController: nameController,
                    hintText: "Task Name",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFieldWidget(
                    textController: detailController,
                    hintText: "Task Details",
                    borderRadius: 15,
                    maxLines: 4,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ButtonWidget(
                    backgroundColor: AppColors.mainColor,
                    text: "Add",
                    textColor: Colors.white,
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 6,
              ),
            ]),
      ),
    );
  }
}
