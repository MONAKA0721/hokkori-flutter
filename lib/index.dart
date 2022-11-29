import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hokkori/notification_page.dart';
import 'package:hokkori/pages/home/home_page.dart';
import 'package:hokkori/pages/mail/mail_page.dart';
import 'package:hokkori/pages/post/post_page.dart';
import 'package:hokkori/pages/search/search_page.dart';
import 'package:hokkori/utils/colors.dart';

class Index extends ConsumerStatefulWidget {
  const Index({super.key, required this.title});

  final String title;

  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends ConsumerState<Index> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _widgetOptions = <Widget>[
      const HomePageNavigator(),
      const SearchPageNavigator(),
      PostPageNavigator(
        navigate: () {
          setState(() {
            _selectedIndex = 0;
          });
        },
      ),
      const MailPage(),
      const NotificationPage(),
    ];

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
        onTap: () {
          final FocusScopeNode currentScope = FocusScope.of(context);
          if (!currentScope.hasPrimaryFocus && currentScope.hasFocus) {
            FocusManager.instance.primaryFocus!.unfocus();
          }
        },
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            backgroundColor: primaryColor,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white.withOpacity(0.5),
            iconSize: 30,
            onTap: _onItemTapped,
            currentIndex: _selectedIndex,
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/home.svg',
                  color: _selectedIndex == 0
                      ? Colors.white
                      : Colors.white.withOpacity(0.5),
                ),
                label: 'ホーム',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/search.svg',
                  color: _selectedIndex == 1
                      ? Colors.white
                      : Colors.white.withOpacity(0.5),
                ),
                label: 'さがす',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/tell.svg',
                  color: _selectedIndex == 2
                      ? Colors.white
                      : Colors.white.withOpacity(0.5),
                ),
                label: 'つたえる',
              ),
              // BottomNavigationBarItem(
              //   icon: SvgPicture.asset(
              //     'assets/mail.svg',
              //     color: _selectedIndex == 3
              //         ? Colors.white
              //         : Colors.white.withOpacity(0.5),
              //   ),
              //   label: 'メール',
              // ),
            ],
          )),
    );
  }
}
