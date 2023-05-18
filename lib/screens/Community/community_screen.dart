import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../widgets/helper_functions.dart';
import 'ask_community.dart';
import 'community_post_details_screen.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({super.key});

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  FocusNode focusNode = FocusNode();
  BuildContext? _scaffoldContext;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      floatingActionButton: SizedBox(
        height: 60,
        child: FloatingActionButton.extended(
            backgroundColor: const Color(0XFF0A3E45),
            onPressed: () {
              pushNewScreen(context, screen: const AskCommunityScreen());
            },
            extendedPadding: const EdgeInsets.symmetric(horizontal: 20),
            label: const Row(
              children: [
                Icon(Icons.edit),
                SizedBox(width: 10),
                Text(
                  'Ask Community',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            )),
      ),
      body: Builder(builder: (context) {
        _scaffoldContext = context;
        return CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              iconTheme: const IconThemeData(color: Colors.black),
              toolbarHeight: kToolbarHeight,
              elevation: 0,
              floating: true,
              pinned: true,
              titleSpacing: 0,
              automaticallyImplyLeading: true,
              leading: IconButton(
                visualDensity:
                    const VisualDensity(horizontal: -4.0, vertical: -4.0),
                splashRadius: 20,
                onPressed: () async {
                  if (FocusScope.of(context).hasFocus) {
                    FocusScope.of(context).unfocus();
                    await Future.delayed(const Duration(milliseconds: 200))
                        .whenComplete(() => Navigator.of(context).pop());
                  } else {
                    Navigator.of(context).pop();
                  }
                },
                icon: const Icon(
                  CupertinoIcons.arrow_left,
                  color: Colors.black,
                ),
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(1),
                child: Container(height: 1, color: Colors.grey),
              ),
              actions: [
                const SizedBox(width: 10),
                IconButton(
                  visualDensity:
                      const VisualDensity(horizontal: -4.0, vertical: -4.0),
                  splashRadius: 20,
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.bell,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  visualDensity:
                      const VisualDensity(horizontal: -4.0, vertical: -4.0),
                  splashRadius: 20,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert,
                    color: Colors.black,
                  ),
                ),
              ],
              title: Container(
                alignment: Alignment.center,
                height: 46,
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  focusNode: focusNode,
                  cursorColor: const Color(0XFF0A3E45),
                  cursorWidth: 1.5,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(top: 10),
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        CupertinoIcons.search,
                        color: Colors.black,
                      ),
                      hintText: 'Search in Community'),
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
                    childCount: 100,
                    (context, index) => Padding(
                          padding: const EdgeInsets.only(
                              bottom: 10, left: 5, right: 5, top: 5),
                          child: CommunityPostCard(
                            isClickable: true,
                            scaffoldContext: _scaffoldContext!,
                          ),
                        )))
          ],
        );
      }),
    );
  }
}

class CommunityPostCard extends StatelessWidget {
  final bool showImage;
  final bool isClickable;
  final BuildContext scaffoldContext;

  const CommunityPostCard({
    this.isClickable = false,
    this.showImage = true,
    required this.scaffoldContext,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Material(
        color: Colors.white,
        child: InkWell(
          onTap: isClickable
              ? () {
                  pushNewScreen(context,
                      screen: const CommunityPostDetailsScreen());
                }
              : null,
          child: Column(
            children: [
              if (showImage)
                CachedNetworkImage(
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    imageUrl:
                        'https://i.natgeofe.com/n/9a66de8b-f698-4193-9ba6-3483b4d3bcf4/flying-fish_4x3.jpg'),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      insetPadding: EdgeInsets.zero,
                                      contentPadding: EdgeInsets.zero,
                                      titlePadding: EdgeInsets.zero,
                                      title: Container(
                                          height: 60,
                                          decoration: const BoxDecoration(
                                              color: Color(0XFF0A3E45),
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(15),
                                                  topRight:
                                                      Radius.circular(15))),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15, vertical: 10),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.85,
                                          alignment: Alignment.center,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Text(
                                                'Rahul Raina',
                                                style: TextStyle(
                                                    letterSpacing: 0.3,
                                                    color: Colors.white),
                                              ),
                                              IconButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  icon: const Icon(
                                                    CupertinoIcons.xmark,
                                                    color: Colors.white,
                                                    size: 26,
                                                  ))
                                            ],
                                          )),
                                      content: Container(
                                        height: 215,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 15, vertical: 10),
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(15),
                                            bottomRight: Radius.circular(15),
                                          ),
                                        ),
                                        child: Column(
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      const SizedBox(
                                                          height: 10),
                                                      Container(
                                                        height: 115,
                                                        width: 115,
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal: 15,
                                                                vertical: 10),
                                                        alignment:
                                                            Alignment.center,
                                                        decoration:
                                                            BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                                color: Colors
                                                                    .green
                                                                    .shade400),
                                                        child: const Icon(
                                                          Icons.person_outline,
                                                          color: Colors.white,
                                                          size: 70,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const SizedBox(
                                                          height: 20),
                                                      const Row(
                                                        children: [
                                                          Icon(
                                                              Icons.location_on,
                                                              color:
                                                                  Colors.red),
                                                          SizedBox(width: 10),
                                                          Text('India'),
                                                        ],
                                                      ),
                                                      const SizedBox(height: 5),
                                                      Container(
                                                        height: 1,
                                                        color: Colors
                                                            .grey.shade300,
                                                      ),
                                                      const SizedBox(height: 8),
                                                      const Row(
                                                        children: [
                                                          Icon(Icons.language,
                                                              color:
                                                                  Colors.green),
                                                          SizedBox(width: 10),
                                                          Text('English'),
                                                        ],
                                                      ),
                                                      const SizedBox(height: 5),
                                                      Container(
                                                        height: 1,
                                                        color: Colors
                                                            .grey.shade300,
                                                      ),
                                                      const SizedBox(height: 8),
                                                      const Row(
                                                        children: [
                                                          Icon(Icons.stars,
                                                              color:
                                                                  Colors.amber),
                                                          SizedBox(width: 10),
                                                          Text('Beginner'),
                                                        ],
                                                      ),
                                                      const SizedBox(height: 5),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                            const SizedBox(height: 20),
                                            Container(
                                              height: 1,
                                              color: Colors.grey.shade300,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                TextButton(
                                                    onPressed: () {
                                                      ScaffoldMessenger.of(
                                                              scaffoldContext)
                                                          .showSnackBar(
                                                              const SnackBar(
                                                                  content: Text(
                                                                      'User resported, thank you for your feedback!')));
                                                    },
                                                    child: Text(
                                                      'Report',
                                                      style: TextStyle(
                                                          color: Colors
                                                              .grey.shade400,
                                                          fontSize: 16),
                                                    )),
                                                TextButton(
                                                    onPressed: () async {
                                                      showDialog(
                                                          context: context,
                                                          builder:
                                                              (context) =>
                                                                  AlertDialog(
                                                                    content:
                                                                        const Row(
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Text('Are you sure you want to block this user?'),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    actions: [
                                                                      TextButton(
                                                                          onPressed:
                                                                              () {
                                                                            Navigator.of(context).pop();
                                                                            showDialog(
                                                                                context: context,
                                                                                builder: (context) {
                                                                                  return AlertDialog(
                                                                                    content: const Text('User blocked successfully'),
                                                                                    actions: [
                                                                                      TextButton(
                                                                                          onPressed: () {
                                                                                            Navigator.of(context).pop();
                                                                                          },
                                                                                          child: const Text(
                                                                                            'OK',
                                                                                            style: TextStyle(color: Colors.green),
                                                                                          ))
                                                                                    ],
                                                                                  );
                                                                                });
                                                                          },
                                                                          child:
                                                                              const Text(
                                                                            'Block User',
                                                                            style:
                                                                                TextStyle(color: Colors.red),
                                                                          )),
                                                                      TextButton(
                                                                          onPressed:
                                                                              () {
                                                                            Navigator.of(context).pop();
                                                                          },
                                                                          child:
                                                                              const Text(
                                                                            'Cancel',
                                                                            style:
                                                                                TextStyle(color: Colors.green),
                                                                          ))
                                                                    ],
                                                                  ));
                                                      // await Fluttertoast.showToast(
                                                      //     msg:
                                                      //         "User blocked successfully.",
                                                      //     toastLength: Toast
                                                      //         .LENGTH_SHORT,
                                                      //     gravity: ToastGravity
                                                      //         .CENTER,
                                                      //     timeInSecForIosWeb: 1,
                                                      //     backgroundColor:
                                                      //         Colors.red,
                                                      //     textColor:
                                                      //         Colors.white,
                                                      //     fontSize: 16.0);
                                                    },
                                                    child: Text(
                                                      'Block User',
                                                      style: TextStyle(
                                                          color: Colors
                                                              .grey.shade400,
                                                          fontSize: 16),
                                                    )),
                                                TextButton(
                                                    onPressed: () {},
                                                    child: const Text(
                                                      'Follow',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0XFF0A3E45),
                                                          fontSize: 16),
                                                    )),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ));
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.green.shade400,
                            child: const Icon(
                              Icons.person_outline,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: 'Rahul •',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green.shade400)),
                              const TextSpan(
                                  text: '  Uttar Pradesh',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey))
                            ])),
                            const SizedBox(height: 2),
                            const Text(
                              '3h',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Can anyone tell what kind of disease is this?',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 3),
                    const Text(
                      'Fish color turning yellow and red',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w500),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                          onPressed: () {},
                          child: const Text(
                            '4 answers',
                            style: TextStyle(
                                color: Colors.grey, letterSpacing: 0.1),
                          )),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(
                                Icons.thumb_up_sharp,
                                color: Colors.green.shade900,
                                size: 24,
                              ),
                              const SizedBox(width: 10),
                              Text(
                                'Upvote',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.green.shade900),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(width: 20),
                        TextButton(
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(
                                Icons.thumb_down_sharp,
                                color: Colors.green.shade900,
                                size: 24,
                              ),
                              const SizedBox(width: 10),
                              Text(
                                'Downvote',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.green.shade900),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
