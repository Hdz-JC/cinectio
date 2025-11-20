import 'package:cinecito/presentation/views/home_view.dart';
import 'package:cinecito/presentation/widgets/shared/custom_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  static const String routeName = 'home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return const Scaffold(body: SafeArea(child: HomeView()),
    bottomNavigationBar: CustomBottomNavigationBar(),);
  }
}



