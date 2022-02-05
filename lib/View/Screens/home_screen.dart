import 'package:facebook_clone/View/Screens/feed_screen.dart';
import 'package:facebook_clone/View/Utils/Consts/app_colors.dart';
import 'package:facebook_clone/View/Widgets/circle_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  final List<Map<String, IconData>> _tabs = [
    {
      'icon': Icons.home_outlined,
      'active icon': Icons.home_rounded,
    },
    {
      'icon': Icons.groups_outlined,
      'active icon': Icons.groups_rounded,
    },
    {
      'icon': Icons.video_collection_outlined,
      'active icon': Icons.video_collection,
    },
    {
      'icon': Icons.storefront_outlined,
      'active icon': Icons.storefront_rounded,
    },
    {
      'icon': Icons.notifications_outlined,
      'active icon': Icons.notifications,
    },
    // {
    //   'icon': FontAwesomeIcons.bell,
    //   'active icon': FontAwesomeIcons.solidBell,
    // },
    {
      'icon': Icons.menu,
      'active icon': Icons.menu,
    },
  ];

  final screens = const [
    FeedScreen(),
    SizedBox(),
    SizedBox(),
    SizedBox(),
    SizedBox(),
    SizedBox(),
  ];

  @override
  void initState() {
    _tabController = TabController(length: _tabs.length, vsync: this);
    _tabController!.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    final _brightness = _theme.brightness;
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            excludeHeaderSemantics: true,
            backgroundColor: _theme.primaryColor,
            title: Text(
              'facebook clone',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                  letterSpacing: -1.2,
                  color: _brightness == Brightness.dark
                      ? Colors.white
                      : facebookColor),
            ),
            actions: [
              CircleButton(
                icon: const FaIcon(
                  FontAwesomeIcons.search,
                  size: 22,
                ),
                onPressed: () {},
              ),
              CircleButton(
                icon: const FaIcon(
                  FontAwesomeIcons.facebookMessenger,
                  size: 22,
                ),
                onPressed: () {},
              ),
            ],
            snap: true,
            floating: true,
            pinned: true,
            elevation: 0,
            bottom: TabBar(
              overlayColor:
                  MaterialStateProperty.all<Color>(Colors.transparent),
              labelColor: facebookColor,
              unselectedLabelColor: _theme.scaffoldBackgroundColor,
              controller: _tabController,
              indicatorPadding: const EdgeInsets.symmetric(horizontal: 2),
              indicatorWeight: 3,
              tabs: _tabs
                  .map(
                    (e) => Tab(
                      icon: Icon(
                        _tabController!.index == _tabs.indexOf(e)
                            ? e['active icon']
                            : e['icon'],
                        // color: _tabController!.index == _tabs.indexOf(e)
                        //     ? facebookColor
                        //     : _theme.scaffoldBackgroundColor,
                        size: 32,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
        body: TabBarView(
          controller: _tabController,
          children: screens,
        ),
      ),
    );
  }
}
