import 'package:e_com_practice/utils/app_constant.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConstant.appMainColor,
        // title: const Text('Main Screen',style: TextStyle(color: Colors.black),),
        title: Text(AppConstant.appMainName,style: TextStyle(
          color: AppConstant.appTextColor,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),),
      ),
      body: const Center(
        child: Text(
          'Welcome to Main Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
