// ignore_for_file: unnecessary_const

import 'package:book_lab/constantsApp/SizeOfConfig.dart';
import 'package:book_lab/constantsApp/constants.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class DetailScreen extends StatefulWidget {
  DetailScreen({Key? key, this.boxColor}) : super(key: key);

  final Color? boxColor;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: SizeOfConfig.calculateH(context: context, number: 350),
              child: Stack(
                children: [
                  Container(
                    width: double.maxFinite,
                    height:
                        SizeOfConfig.calculateH(context: context, number: 200),
                    decoration: BoxDecoration(
                      color: widget.boxColor ?? const Color(0xffF9CFE3),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: const Radius.circular(35),
                        bottomRight: const Radius.circular(35),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: SizeOfConfig.calculateH(
                          context: context, number: 250),
                      alignment: Alignment.center,
                      child: Text('image'),
                    ),
                  ),
                  Positioned(
                    top: 70,
                    left: 16,
                    child: OutlinedButton.icon(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          width: 1,
                        ),
                      ),
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        color: AppColors.black,
                      ),
                      label: const Text(""),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Text",
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .headline1
                        ?.copyWith(fontSize: 24),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "inf".toUpperCase(),
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 35,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Print Type",
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        const Spacer(
                          flex: 2,
                        ),
                        Container(
                          height: SizeOfConfig.calculateH(
                              context: context, number: 35),
                          width: SizeOfConfig.calculateW(
                              context: context, number: 80),
                          decoration: BoxDecoration(
                            color: AppColors.black,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            "pay Count",
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                        const Spacer(),
                        Text("Pages",
                            style: Theme.of(context).textTheme.headline4),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OutlinedButton(
                        onPressed: () async {},
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                            width: 1,
                          ),
                        ),
                        child: Text("View ONLINE",
                            style: Theme.of(context).textTheme.headline4),
                      ),
                      OutlinedButton.icon(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                            width: 1,
                          ),
                        ),
                        icon: Icon(Icons.favorite_outline),
                        label: Text(
                          "Add to Favourite",
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Detailes",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BuildText(context, "Author"),
                            BuildText(context, "Publisher"),
                            BuildText(context, "Published Date"),
                            BuildText(context, "Categories"),
                          ],
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BuildTextBold(context, "Author"),
                              BuildTextBold(context, "Published Date"),
                              BuildTextBold(context, "Categories"),
                              BuildTextBold(context, "Publisher"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Description",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ReadMoreText(
                    "description",
                    trimLines: 6,
                    colorClickableText: AppColors.black,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        ?.copyWith(fontSize: 15),
                    trimExpandedText: 'Show less',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () async {},
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.black,
                    ),
                    child: Text(
                      "Buy Now",
                      style: Theme.of(context)
                          .textTheme
                          .headline2
                          ?.copyWith(fontSize: 18, color: Colors.white),
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

  Text BuildTextBold(BuildContext context, String text) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline5?.copyWith(fontSize: 16),
    );
  }

  Text BuildText(BuildContext context, String inf) {
    return Text(
      inf,
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
