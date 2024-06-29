import 'package:assignment_three/components/outline_button.dart';
import 'package:assignment_three/components/round_image_text_card.dart';
import 'package:assignment_three/components/two_column_card.dart';
import 'package:assignment_three/components/two_column_text_card.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 20.0,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RoundImageTextCard(
                      imagePath: './assets/images/beauty.jpeg',
                      cardText: 'Beauty'),
                  RoundImageTextCard(
                      imagePath: './assets/images/women.jpeg',
                      cardText: 'Fashion'),
                  RoundImageTextCard(
                      imagePath: './assets/images/kids.jpeg', cardText: 'Kids'),
                  RoundImageTextCard(
                      imagePath: './assets/images/mans.jpeg', cardText: 'Mens')
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 15.0),
                height: 250.0,
                width: 330.0,
                decoration: const BoxDecoration(
                    color: Color(0xFFFD6E86),
                    borderRadius: BorderRadius.all(Radius.circular(15.0))),
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '50-40% OFF',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Now in (Product)',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(
                      'All colours',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    CustomOutlineButton(
                      buttonText: 'Shop Now',
                      customIcon: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
              const TwoColumnTextCard(
                radius: 15.0,
                textColor: Colors.white,
                spacing: 15.0,
                heading: 'Deal of the Day',
                subHeading: '22h 5mm 20s remaining',
                btnText: 'View all',
                color: Color(0xFF4392F9),
              ),
              const TwoColumnCard(
                height: 120.0,
                color: Colors.white,
                heading: 'Special Offers',
                pera:
                    'We make sure you get the \n offer you need at best prices',
                image: './assets/images/specialOffer.png',
              ),
              const TwoColumnTextCard(
                radius: 15.0,
                spacing: 15.0,
                textColor: Colors.white,
                heading: 'Trending Products',
                subHeading: 'Last Date 29/02/22',
                btnText: 'View all',
                color: Color(0xFFFD6E87),
              ),
              SizedBox(
                width: 330.0,
                height: 150,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0)), // Image border
                  child: SizedBox.fromSize(
                    size: const Size.fromRadius(48), // Image radius
                    child: Image.asset(
                      './assets/images/summersdeal.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const TwoColumnTextCard(
                textColor: Colors.black,
                heading: 'New Arrivals',
                subHeading: 'Summer 25 Collections',
                btnText: 'View all',
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
