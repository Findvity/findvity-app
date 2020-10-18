import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../utils/styles.dart';

class Feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        // backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text(
          'FINDVITY',
          style: titleText,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            color: primaryColor,
            icon: Icon(Icons.notifications),
          )
        ],
      ),
      body: SingleChildScrollView(
        // padding: EdgeInsets.all(16),
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                child: Text(
                  'UPCOMING',
                  style: smallText,
                ),
              ),
            ),
            buildUpcomingRow(context),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                child: Text(
                  'YOUR FEED',
                  style: smallText,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: borderRadiusButton,
                color: Colors.white,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 10,
                        ),
                        Spacer(),
                        Text(
                          "Posted in 'Weekend Sports'",
                          style: smallText.copyWith(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.network(
                    "https://images.unsplash.com/photo-1529768167801-9173d94c2a42?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.width * 0.5,
                    width: double.maxFinite,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      IconButton(
                        padding: EdgeInsets.zero,      
                        onPressed: (){},
                        icon: Icon(Icons.favorite),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  SingleChildScrollView buildUpcomingRow(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (int i = 0; i < 5; i++)
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8,
              ),
              padding: EdgeInsets.only(
                bottom: 8,
              ),
              width: MediaQuery.of(context).size.width * 0.7,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: borderRadiusButton,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: Image.network(
                      "https://images.unsplash.com/photo-1461749280684-dccba630e2f6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80,",
                      fit: BoxFit.cover,
                      height: MediaQuery.of(context).size.width * 0.35,
                      width: double.maxFinite,
                      // height: 150,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 8,
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hack The U',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.calendar_today,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  DateFormat.yMMMd().format(DateTime(2020, 10, 18)),
                                  style: smallText.copyWith(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.access_time,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  TimeOfDay.fromDateTime(DateTime.now().add(Duration(hours: i)))
                                      .format(context),
                                  style: smallText.copyWith(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        Spacer(),
                        CircleAvatar(
                          backgroundColor: accentColor,
                          foregroundColor: Colors.white,
                          child: Icon(Icons.navigate_next),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
        ],
      ),
    );
  }
}
