import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:posapp/configs/app_color.dart';
import 'package:posapp/configs/app_theme.dart';
import 'package:posapp/utils/auth_util.dart';

import '../../../configs/app_spacing.dart';

class SignInImages extends StatefulWidget {
  const SignInImages({super.key});

  @override
  State<SignInImages> createState() => _SignInImagesState();
}

class _SignInImagesState extends State<SignInImages> {
  int _current = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColor.lightestGrey,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.only(left: xxxMediumSpacing),
            child: Row(children: [
              Image.asset('assets/icons/shopping_bag.png', width: 25),
              const SizedBox(width: 10),
              RichText(
                  text: TextSpan(
                      text: 'Sell',
                      style: Theme.of(context).textTheme.mediumLarge.copyWith(
                          fontWeight: FontWeight.w800, color: AppColor.black),
                      children: [
                    TextSpan(
                        text: 'Smart',
                        style: Theme.of(context).textTheme.mediumLarge.copyWith(
                            fontWeight: FontWeight.w800,
                            color: AppColor.errorRed))
                  ]))
            ]),
          ),
          const SizedBox(height: 70),
          CarouselSlider(
              carouselController: _controller,
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height * 0.6,
                aspectRatio: 9 / 16,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                },
                scrollDirection: Axis.horizontal,
              ),
              items: imgList.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Image.asset(i));
                  },
                );
              }).toList()),
          Padding(
            padding: const EdgeInsets.all(xxTinySpacing),
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 200),
              child: Text(
                textList[_current],
                key: ValueKey(_current),
                style: Theme.of(context).textTheme.mediumLarge.copyWith(
                    fontWeight: FontWeight.w800, color: AppColor.black),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 12.0,
                  height: 12.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : AppColor.deepBlue)
                          .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                ),
              );
            }).toList(),
          )
        ]));
  }
}
