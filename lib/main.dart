import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const CupertinoList());

class CupertinoList extends StatelessWidget {
  const CupertinoList({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CupertinoTabBarExample(),
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
          brightness: Brightness.light), // Configura el tema claro
    );
  }
}

class CupertinoTabBarExample extends StatelessWidget {
  const CupertinoTabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.clock_solid),
            label: 'Recents',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.folder_fill_badge_person_crop),
            label: 'Shared',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.folder_fill),
            label: 'Browse',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            return CupertinoListSection.insetGrouped(
              header: const Text(
                'Browse',
                style: TextStyle(fontSize: 34.0),
              ),
              footer: const CupertinoListTile(
                title: Text(
                  'iCloud',
                  style: TextStyle(fontSize: 24.0),
                ),
                trailing: CupertinoListTileChevron(),
                onTap: null,
              ),
              children: const <CupertinoListTile>[
                CupertinoListTile.notched(
                  title: Text('iCloud Drive'),
                  leading: Icon(color: Colors.blue, Icons.calendar_month),
                  trailing: CupertinoListTileChevron(),
                ),
                CupertinoListTile.notched(
                  title: Text('On My iPhone'),
                  leading: Icon(
                      color: Colors.blue, Icons.mark_email_unread_outlined),
                  trailing: CupertinoListTileChevron(),
                ),
                CupertinoListTile.notched(
                  title: Text('Drive'),
                  leading: Icon(color: Colors.blue, Icons.inbox),
                  trailing: CupertinoListTileChevron(),
                ),
                CupertinoListTile.notched(
                  title: Text('pCloud'),
                  leading: Icon(color: Colors.blue, Icons.archive_outlined),
                  trailing: CupertinoListTileChevron(),
                ),
                CupertinoListTile.notched(
                  title: Text('Recently Deleted'),
                  leading: Icon(color: Colors.blue, Icons.delete),
                  trailing: CupertinoListTileChevron(),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
