import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:codibex_assignment/constants/colors.dart';
import 'package:codibex_assignment/constants/data.dart';
import 'package:codibex_assignment/widgets/homePage/greet_text.dart';
import 'package:codibex_assignment/widgets/homePage/health_risk_card.dart';
import 'package:codibex_assignment/widgets/homePage/lab_test_row.dart';
import 'package:codibex_assignment/widgets/homePage/my_report_tile.dart';
import 'package:codibex_assignment/widgets/homePage/report_card.dart';
import 'package:codibex_assignment/widgets/homePage/top_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final AppinioSwiperController controller = AppinioSwiperController();
  // final tabController = TabController(length: 3, vsync: this);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: DefaultTabController(
        length: 2,
        child: TabBar(
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(color: Color(0xffAF3AFF), width: 1.5),
            insets: EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 48.0),
          ),
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          tabs: [
            Tab(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/icons/health.svg',
                      height: 20, width: 20),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text(
                    'My Health',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            Tab(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/icons/consult.svg',
                      height: 20, width: 20),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text(
                    'Consultation',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff919CB3),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: bgGradient,
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Container(
                // height: MediaQuery.of(context).size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const TopRow(),
                            const SizedBox(
                              height: 24,
                            ),
                            const GreetText(),
                            const SizedBox(
                              height: 16,
                            ),
                            Container(
                              height: 100,
                              padding: const EdgeInsets.only(
                                right: 1,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: IntrinsicHeight(
                                child: Row(
                                  children: [
                                    const MyReportTile(),
                                    const VerticalDivider(
                                      color: Color(0xffDADADA),
                                      thickness: 2,
                                      indent: 0,
                                    ),
                                    Expanded(
                                      child: ListView.builder(
                                          itemCount: 2,
                                          scrollDirection: Axis.horizontal,
                                          shrinkWrap: true,
                                          itemBuilder: (context, index) {
                                            return ReportCard(
                                              title: data[index].title,
                                              status: data[index].status,
                                              color: data[index].color,
                                              bgColor: data[index].bgColor,
                                            );
                                          }),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                        left: 16,
                        right: 16,
                        top: 16,
                      ),
                      width: double.infinity,
                      // height: MediaQuery.of(context).size.height * 0.9,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35),
                            topRight: Radius.circular(35)),
                      ),
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 1.5,
                                    width: double.infinity,
                                    color: Color(0xff919CB3),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Text(
                                  'Swipe to check your health risks',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: textColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: Container(
                                    height: 1.5,
                                    width: double.infinity,
                                    color: Color(0xff919CB3),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.65,
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: AppinioSwiper(
                                unlimitedUnswipe: true,
                                controller: controller,
                                cards: const [
                                  HealthRiskCard(),
                                  HealthRiskCard(),
                                  HealthRiskCard(),
                                  HealthRiskCard(),
                                ],
                                padding: const EdgeInsets.only(
                                  left: 25,
                                  right: 25,
                                  top: 20,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: LabTestRow(),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
