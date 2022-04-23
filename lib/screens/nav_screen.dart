import 'package:facebook_clone_ui/data/data.dart';
import 'package:flutter/material.dart';
import 'package:facebook_clone_ui/screens/home_screen.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../widgets/widgets.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    HomeScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];

  final List<IconData> _icons = const [
    Icons.home,
    Icons.ondemand_video,
    MdiIcons.accountCircle,
    MdiIcons.accountGroupOutline,
    Icons.menu,
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return DefaultTabController(
      length: _icons.length,
      child: Scaffold(
        appBar: Responsive.isDesktop(context)
            ? PreferredSize(
                child: CustomAppBar(
                  currentUser: currentUser,
                  icons: _icons,
                  selectedIndex: _selectedIndex,
                  onTap: (index) => setState(() => _selectedIndex = index),
                ),
                preferredSize: Size(screenSize.width, 100.0),
              )
            : null,
        body: IndexedStack(
          index: _selectedIndex,
          children: _screens,
        ),
        bottomNavigationBar: !Responsive.isDesktop(context)
            ? CustomTabBar(
                icons: _icons,
                selectedIndex: _selectedIndex,
                onTap: (index) => setState(() => _selectedIndex = index),
              )
            : const SizedBox.shrink(),
      ),
    );
  }
}
