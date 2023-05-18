import 'package:flutter/material.dart';

import 'community_screen.dart';

class CommunityPostDetailsScreen extends StatefulWidget {
  const CommunityPostDetailsScreen({super.key});

  @override
  State<CommunityPostDetailsScreen> createState() =>
      _CommunityPostDetailsScreenState();
}

class _CommunityPostDetailsScreenState
    extends State<CommunityPostDetailsScreen> {
  BuildContext? _scaffoldContext;
  Color appBarBackGroundColor = Colors.white;
  FocusNode focusNode = FocusNode();
  ScrollController scrollController = ScrollController();
  ValueNotifier<double> opacityNotifier = ValueNotifier(0);

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      opacityNotifier.value =
          ((scrollController.offset - 25) * 0.01).clamp(0, 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.grey.shade100,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: ValueListenableBuilder(
            valueListenable: opacityNotifier,
            builder: (context, value, child) {
              return AppBar(
                backgroundColor: appBarBackGroundColor.withOpacity(value),
                title: Text(
                  'Can anyone tell what kind of disease is this?',
                  style: TextStyle(color: Colors.black.withOpacity(value)),
                ),
                titleSpacing: 0,
                actions: [
                  IconButton(
                    visualDensity:
                        const VisualDensity(horizontal: -4.0, vertical: -4.0),
                    splashRadius: 20,
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert,
                      color: value >= 0.5
                          ? Colors.black.withOpacity(value)
                          : Colors.white.withOpacity(1 - value),
                    ),
                  ),
                ],
                elevation: value == 1 ? 2 : 0,
                // elevation: 0,
                toolbarHeight: kToolbarHeight,
                iconTheme: IconThemeData(
                    color: value >= 0.5
                        ? Colors.black.withOpacity(value)
                        : Colors.white.withOpacity(1 - value)),
              );
            }),
      ),
      body: Builder(builder: (context) {
        _scaffoldContext = context;
        return Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CustomScrollView(
              controller: scrollController,
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      CommunityPostCard(
                          showImage: true, scaffoldContext: _scaffoldContext!),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    height: MediaQuery.of(context).size.height - 250,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'No comments yet',
                          style: TextStyle(
                              fontStyle: FontStyle.italic, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              height: 60,
              decoration: const BoxDecoration(color: Colors.white),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.green.shade400,
                    child: const Icon(
                      Icons.person_outline,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: 45,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade500),
                          borderRadius: BorderRadius.circular(10)),
                      child: TextField(
                        focusNode: focusNode,
                        cursorColor: const Color(0XFF0A3E45),
                        cursorWidth: 1.5,
                        decoration: const InputDecoration(
                            contentPadding:
                                EdgeInsets.only(left: 10, right: 10),
                            border: InputBorder.none,
                            hintText: 'Write your answer'),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Material(
                    child: IconButton(
                      visualDensity:
                          const VisualDensity(horizontal: -4.0, vertical: -4.0),
                      splashRadius: 20,
                      onPressed: () {},
                      icon: Icon(Icons.send, color: Colors.grey.shade500),
                    ),
                  ),
                ],
              ),
            )
          ],
        );
      }),
    );
  }
}
