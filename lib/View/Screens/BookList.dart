import 'package:book_lab/constantsApp/constants.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class BookList extends StatelessWidget {
  BookList({super.key, required this.name});
  String name;

  final _random = math.Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: AppColors.black),
        title: Text(
          name,
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: GridView.builder(
        itemCount: 35,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 260,
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
        ),
        itemBuilder: (context, index) {
          // ignore: prefer_const_constructors
          return Padding(
            padding: const EdgeInsets.all(16),
            child: GestureDetector(
              // onTap: () {
              //   Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //           builder: (context) => BookList()));
              // },
              child: Container(
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: LayoutBuilder(builder: (context, constraints) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: constraints.maxHeight / 2,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Container(
                              height: constraints.maxHeight / 2.5,
                              decoration: BoxDecoration(
                                color: boxColors[_random.nextInt(4)],
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              child: Card(
                                margin: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: SizedBox(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Text('adha,'),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "item",
                              maxLines: 1,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4
                                  ?.copyWith(
                                    fontSize: constraints.maxWidth * 0.09,
                                  ),
                            ),
                            Text(
                              "title",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4
                                  ?.copyWith(
                                    fontSize: constraints.maxWidth * 0.09,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Container(
                              height: constraints.maxHeight * 0.13,
                              width: constraints.maxWidth * 0.35,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: AppColors.black,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Text(
                                'pageCount',
                                style: TextStyle(
                                  fontSize: constraints.maxWidth * 0.08,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                }),
              ),
            ),
          );
        },
      ),
    );
  }
}
