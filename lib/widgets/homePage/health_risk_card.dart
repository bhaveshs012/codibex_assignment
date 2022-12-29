import 'package:codibex_assignment/constants/colors.dart';
import 'package:codibex_assignment/widgets/homePage/health_risk_summary.dart';
import 'package:flutter/material.dart';

class HealthRiskCard extends StatelessWidget {
  const HealthRiskCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      height: MediaQuery.of(context).size.height * 0.7,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Color(0xff919CB3),
              width: 0.3,
            ),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.75,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/health.png',
                  width: MediaQuery.of(context).size.width * 0.75,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 4),
                            decoration: BoxDecoration(
                              color: Color(0xffFFF5DC),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              'Risk',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xffCC9916),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          CircleAvatar(
                            radius: 4,
                            backgroundColor: Color(0xffCC9916),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          CircleAvatar(
                            radius: 4,
                            backgroundColor: Color(0xffDADADA),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          CircleAvatar(
                            radius: 4,
                            backgroundColor: Color(0xffDADADA),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Diabetes',
                        style: TextStyle(
                          fontSize: 20,
                          color: textColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Diabetes is common in the summer time and so on and so fort the disease has this this issues. It is common in the summer time and so on and so fort the ...',
                        style: TextStyle(
                          fontSize: 16,
                          color: textColor,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          HealthRiskSummary(
                            title: '131',
                            subtitle: 'bpm',
                            image: 'assets/images/heart.png',
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          HealthRiskSummary(
                            title: '244',
                            subtitle: 'Kcal',
                            image: 'assets/images/fire.png',
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
