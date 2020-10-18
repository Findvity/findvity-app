import 'package:findvity_app/src/presentation/utils/styles.dart';
import 'package:flutter/material.dart';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(100),
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Search',
                    style: smallText.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverPadding(
            padding: EdgeInsets.all(16),
            sliver: SliverToBoxAdapter(
              child: Text(
                'BASED ON YOUR ACTIVITY',
                style: smallText,
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            sliver: SliverStaggeredGrid.countBuilder(
              crossAxisCount: 2,
              itemCount: 8,
              itemBuilder: (BuildContext context, int index) => Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: borderRadiusButton,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      child: Image.network(
                        "https://images.unsplash.com/photo-1602520628350-fbf9db1f02ae?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1868&q=80",
                        height: MediaQuery.of(context).size.height * 0.29,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Yoga Club',
                            style: heading.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Yoga, Health, fitness, mindfulness',
                            style: smallText.copyWith(
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.people,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '500+',
                                style: smallText.copyWith(
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 1,
                                height: 20,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.location_on,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '500+',
                                style: smallText.copyWith(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              staggeredTileBuilder: (int index) => StaggeredTile.count(2, 2),
              mainAxisSpacing: 16.0,
              crossAxisSpacing: 16.0,
            ),
          ),
        ],
        // child: Column(
        //   children: [
        //     SizedBox(
        //       height: 10,
        //     ),
        //     Align(
        //       alignment: Alignment.centerLeft,
        //       child: Text(
        //         'BASED ON YOUR ACTIVITY',
        //         style: smallText,
        //       ),
        //     ),
        //     SizedBox(
        //       height: 20,
        //     ),
        //     Expanded(
        //       child: StaggeredGridView.countBuilder(
        //         crossAxisCount: 4,
        //         itemCount: 8,
        //         itemBuilder: (BuildContext context, int index) =>   Container(
        //             color: Colors.green,
        //             child:   Center(
        //               child:   CircleAvatar(
        //                 backgroundColor: Colors.white,
        //                 child:   Text('$index'),
        //               ),
        //             )),
        //         staggeredTileBuilder: (int index) =>
        //               StaggeredTile.count(2, index.isEven ? 2 : 1),
        //         mainAxisSpacing: 4.0,
        //         crossAxisSpacing: 4.0,
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
