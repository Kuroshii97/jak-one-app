import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:jak_one_app_replacement/util/color_constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

enum TouristPass {
  ancol("asset/ancol_image.png", "Ancol Entrance gate"),
  monas("asset/monumen_nasional.jpeg", "Monumen Nasional"),
  pusatPrimata("asset/pusat_primata_schumtzer.jpeg", "Pusat Primata Schmutzer");

  const TouristPass(this.imageAsset, this.passName);

  final String imageAsset;
  final String passName;
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _controller = ScrollController();
  final ScrollController _controllerEvents = ScrollController();
  int positionPass = 0;
  int positionEvents = 0;
  List<String> imageList = [
    "asset/van_gogh.jpeg",
    "asset/flame_rises_banner.jpeg"
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.addListener(_scrollListener);
    _controllerEvents.addListener(_scrollEventListener);
  }

  void _scrollEventListener() {
    if (_controllerEvents.position.atEdge) {
      if (_controllerEvents.position.pixels == 0) {
        positionEvents = 0;
        setState(() {});
      } else {
        positionEvents = 2;
        setState(() {});
      }
    } else {
      positionEvents = 1;
      setState(() {});
    }
  }

  void _scrollListener() {
    if (_controller.position.atEdge) {
      if (_controller.position.pixels == 0) {
        positionPass = 0;
        setState(() {});
      } else {
        positionPass = 2;
        setState(() {});
      }
    } else {
      positionPass = 1;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: kToolbarHeight * 3 + 30,
              decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.vertical(bottom: Radius.circular(35)),
                gradient: LinearGradient(
                  colors: <Color>[
                    ColorConstant.jakOneDarkOrange,
                    ColorConstant.jakOneLighterOrange,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            SafeArea(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Image.asset(
                        'asset/jakarta_tourist_pass_icon.png',
                        width: 119,
                        height: 39,
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Card(
                            color: Colors.transparent,
                            elevation: 1,
                            child: Container(
                              width: 27,
                              height: 27,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  colors: <Color>[
                                    ColorConstant.jakOneDarkOrange,
                                    ColorConstant.jakOneLighterOrange,
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                              ),
                              child: Image.asset('asset/document_icon.png'),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Card(
                            color: Colors.transparent,
                            elevation: 3,
                            child: Container(
                              height: 27,
                              width: 27,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  colors: <Color>[
                                    ColorConstant.jakOneDarkOrange,
                                    ColorConstant.jakOneLighterOrange,
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                              ),
                              child: Image.asset('asset/notification_icon.png'),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        Container(
                          color: Colors.transparent,
                          child: Image.asset(
                            'asset/profile_user_icon.png',
                            height: 38,
                            width: 38,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Good Morning',
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Guest',
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    width: double.infinity,
                    height: 84,
                    child: Card(
                      color: Colors.white,
                      elevation: 3,
                      child: Container(
                        padding: const EdgeInsets.only(right: 30),
                        child: Row(
                          children: [
                            Container(
                              height: 84,
                              width: 10,
                              margin: const EdgeInsets.only(
                                right: 40,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.horizontal(
                                    left: Radius.circular(35)),
                                gradient: LinearGradient(
                                  colors: <Color>[
                                    ColorConstant.jakOneDarkOrange,
                                    ColorConstant.jakOneLightestOrange,
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Balance Account',
                                    style: GoogleFonts.nunito(
                                      fontSize: 10,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Rp. ',
                                        style: GoogleFonts.nunito(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        '0',
                                        style: GoogleFonts.nunito(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '-',
                                    style: GoogleFonts.nunito(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 1,
                                vertical: 1,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.jakOneLightestOrange,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(4)),
                              ),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 5,
                                ),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      ColorConstant.jakOneDarkOrange,
                                      ColorConstant.jakOneLighterOrange
                                    ],
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(4)),
                                ),
                                child: Text(
                                  'Top Up',
                                  style: GoogleFonts.nunito(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 5),
                          child: Row(
                            children: [
                              _buttonSelection('Explore Jakarta',
                                  'asset/explore_jakarta_button.png', null),
                              _buttonSelection('Top Up JakCard',
                                  'asset/top_up_jakcard_button.png', null),
                              _buttonSelection('JakCard Balance',
                                  'asset/jak_card_balance_balance.png', null),
                              _buttonSelection(
                                  'Event', 'asset/event_button.png', null),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 0.0),
                          child: CarouselSlider.builder(
                            itemCount: 2,
                            itemBuilder: (BuildContext context, int itemIndex,
                                int pageViewIndex) {
                              return Image.asset('asset/ad_banner.png');
                            },
                            options: CarouselOptions(
                                aspectRatio: 16 / 5,
                                autoPlay: true,
                                enableInfiniteScroll: false,
                                viewportFraction: 0.8,
                                disableCenter: true,
                                padEnds: true),
                          ),
                        ),
                        _titleBar(
                            "Let's Go with Jakarta Tourist Pass",
                            "a place not to be missed",
                            'asset/landmark_icon.png'),
                        SizedBox(
                          height: 160,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Image.asset(
                                  'asset/did_you_know_badge.png',
                                  height: 103,
                                  width: 68,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: ListView.builder(
                                  controller: _controller,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 3,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return _touristPassCard(index);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        DotsIndicator(
                          dotsCount: 3,
                          position: positionPass,
                          decorator: DotsDecorator(
                            size: const Size(4, 4),
                            activeSize: const Size(4, 4),
                            color: ColorConstant.jakOneLighterOrange,
                            activeColor: ColorConstant.jakOneDarkOrange,
                          ),
                        ),
                        _titleBar(
                            "Events in Jakarta",
                            "don't miss the current events",
                            'asset/landmark_icon.png'),
                        SizedBox(
                          height: 180,
                          child: ListView.builder(
                            controller: _controllerEvents,
                            itemBuilder: (BuildContext context, int index) {
                              return _bannerCard(index);
                            },
                            shrinkWrap: true,
                            itemCount: imageList.length,
                            scrollDirection: Axis.horizontal,
                          ),
                        ),
                        DotsIndicator(
                          dotsCount: 3,
                          position: positionEvents,
                          decorator: DotsDecorator(
                            size: const Size(4, 4),
                            activeSize: const Size(4, 4),
                            color: ColorConstant.jakOneLighterOrange,
                            activeColor: ColorConstant.jakOneDarkOrange,
                          ),
                        ),
                        const SizedBox(
                          height: 100,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 12,
              bottom: 12,
              child: Image.asset(
                'asset/floating_action_button.png',
                height: 99,
                width: 90,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.transparent,
          elevation: 0,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  ColorConstant.jakOneDarkOrange,
                  ColorConstant.jakOneLightestOrange,
                ],
              ),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Image.asset('asset/qris_icon.png'),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey, // Shadow color
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(
                      0, 5),
                ),
              ],
            ),
            height: kToolbarHeight + 10,
            child: BottomAppBar(
              color: Colors.white,
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 75.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'asset/home_bottom_app_bar_icon.png',
                      height: 20,
                      width: 20,
                    ),
                    Image.asset(
                      'asset/profile_bottom_app_bar_icon.png',
                      height: 20,
                      width: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }

  Widget _buttonSelection(String buttonName, String imageAsset, void function) {
    return Expanded(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 2,
              vertical: 2,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  ColorConstant.jakOneLightestOrange,
                  ColorConstant.jakOneDarkOrange
                ],
              ),
              borderRadius: const BorderRadius.all(Radius.circular(8)),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [ColorConstant.jakOneWhiteOrange, Colors.white],
                ),
                borderRadius: const BorderRadius.all(Radius.circular(4)),
              ),
              child: Image.asset(
                imageAsset,
                fit: BoxFit.fill,
                height: 47,
                width: 47,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            buttonName,
            style: GoogleFonts.nunito(
              fontSize: 8,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }

  Widget _titleBar(String title, String description, String leftLogo) {
    return SizedBox(
      height: 40,
      child: Row(
        children: [
          Container(
            height: 40,
            padding: const EdgeInsets.all(1),
            decoration: BoxDecoration(
              color: ColorConstant.jakOneYellow,
              borderRadius:
                  const BorderRadius.horizontal(right: Radius.circular(100)),
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    ColorConstant.jakOneDarkOrange,
                    ColorConstant.jakOneLighterOrange,
                  ],
                ),
                borderRadius: const BorderRadius.horizontal(
                  right: Radius.circular(100),
                ),
              ),
              child: Image.asset(leftLogo),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          description,
                          style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                ColorConstant.jakOneLighterOrange,
                                ColorConstant.jakOneDarkOrange,
                              ],
                            ),
                            borderRadius: const BorderRadius.horizontal(
                              right: Radius.circular(100),
                            ),
                          ),
                          height: 2,
                          width: 37,
                        )
                      ],
                    ),
                  ),
                  Text(
                    'View all',
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _touristPassCard(int index) {
    List<TouristPass> touristPass = TouristPass.values;
    return Card(
      color: Colors.transparent,
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              ),
              child: ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(10)),
                child: Image.asset(
                  touristPass[index].imageAsset,
                  height: 100,
                  width: 100,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text(
              touristPass[index].passName,
              style: GoogleFonts.nunito(
                fontSize: 8,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 1,
                            vertical: 1,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.jakOneLightestOrange,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(100)),
                          ),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5,
                            ),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  ColorConstant.jakOneDarkOrange,
                                  ColorConstant.jakOneLighterOrange
                                ],
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4)),
                            ),
                            child: Text(
                              'Detail',
                              style: GoogleFonts.nunito(
                                fontSize: 7,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _bannerCard(int index) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        gradient: LinearGradient(
          colors: <Color>[
            ColorConstant.jakOneDarkOrange,
            Colors.white,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white),
            padding: const EdgeInsets.all(3),
            margin: const EdgeInsets.all(3),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Image.asset(
                imageList[index],
                width: 160,
                height: 100,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 1,
              vertical: 1,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.jakOneLightestOrange,
              borderRadius: const BorderRadius.all(Radius.circular(100)),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    ColorConstant.jakOneDarkOrange,
                    ColorConstant.jakOneLighterOrange
                  ],
                ),
                borderRadius: const BorderRadius.all(Radius.circular(4)),
              ),
              child: Text(
                'More Information',
                style: GoogleFonts.nunito(
                  fontSize: 7,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
