import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:nanoid/nanoid.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:rail_sub_menu/extensions.dart';
import 'package:rail_sub_menu/page/submenu_controller.dart';
import '../router/app_router.dart';
import '../widgets/on_hover_button.dart';
import '../widgets/rail_sub_menu/model/slide_menu_data.dart';
import '../widgets/rail_sub_menu/rail_sub_menu.dart';
import '../widgets/rail_sub_menu/state/slide_menu_state.dart';

class HomeMenuRail extends ConsumerStatefulWidget {
  const HomeMenuRail({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  ConsumerState<HomeMenuRail> createState() => _HomeMenuRailState();
}

class _HomeMenuRailState extends ConsumerState<HomeMenuRail> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool onSubMenu = false;
  String? selectedId;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 150));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  /// TYPE1: Expansion menu
  /// TYPE2: Header-only menu
  /// ** Error if only item menu exists.
  List<SlideMenuData> settingsMenu = [
    SlideMenuData(
        header: ItemMenuData(id: nanoid(), title: 'SETTING'),
        itemMenu: [
          ItemMenuData(
              id: nanoid(),
              title: 'SUB-PAGE 1',
              routerPath: AppRoutes.setting_subpage1_path),
          ItemMenuData(
              id: nanoid(),
              title: 'SUB-PAGE 2',
              routerPath: AppRoutes.setting_subpage2_path),
        ]),

    SlideMenuData(
        header: ItemMenuData(id: nanoid(), title: 'SUBMENU B' ),
        itemMenu: [
          ItemMenuData(id: nanoid(), title: 'SUB-PAGE 1',routerPath: AppRoutes.setting_subpage1_path),
          ItemMenuData(id: nanoid(), title: 'SUB-PAGE 2'),
        ]),

    SlideMenuData(
      /// TYPE2: only header menu
      header: ItemMenuData(id: nanoid(), title: 'HEADER MENU',routerPath: AppRoutes.setting_subpage2_path ),
     ),
  ];
  /// Business menu
  List<SlideMenuData> businessMenu = [
    SlideMenuData(
        header: ItemMenuData(id: nanoid(), title: 'BUSINESS'),

        itemMenu: [
          ItemMenuData(
              id: nanoid(),
              title: 'SUB-PAGE 1',
              routerPath: AppRoutes.business_subpage1_path),
          ItemMenuData(
              id: nanoid(),
              title: 'SUB-PAGE 2',
              routerPath: AppRoutes.business_subpage2_path),
        ]),

    SlideMenuData(
        header: ItemMenuData(id: nanoid(), title: 'SUBMENU B' ),

        itemMenu: [
          ItemMenuData(id: nanoid(), title: 'SUB-PAGE 1',routerPath: AppRoutes.business_subpage1_path),
          ItemMenuData(id: nanoid(), title: 'SUB-PAGE 2',routerPath: AppRoutes.business_subpage2_path),
          ItemMenuData(id: nanoid(), title: 'SUB-PAGE 3',routerPath: AppRoutes.business_subpage3_path),
        ]),

    SlideMenuData(
      /// TYPE2: only header menu
      header: ItemMenuData(id: nanoid(), title: 'HEADER MENU',routerPath: AppRoutes.business_subpage1_path ),
       ),
  ];

  List<SlideMenuData>? _selectedMenuData(int index){

    switch(index){
      case 0: return settingsMenu;

      /// information
      case 1: break;

      case 2: return businessMenu;
    }
    return null;

  }


/// Rail tap select id
_selectScreen(BuildContext context) {
  final GoRouter route = GoRouter.of(context);
  final String location = route.location;

  /// Settings page
  if (location == AppRoutes.settings) {
    return 0;
  }

  if (location == AppRoutes.information) {
    return 1;
  }
  if (location == AppRoutes.business) {
    return 2;
  }
}

_onTabGoScreen(int index, BuildContext context) {
  switch (index) {
    case 0:
      GoRouter.of(context).go(AppRoutes.settings);
      break;
    case 1:
      GoRouter.of(context).go(AppRoutes.information);
      break;
    case 2:
      GoRouter.of(context).go(AppRoutes.business);
      break;
  }
}
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) =>
        Scaffold(
          body: ConstrainedBox(
            constraints: BoxConstraints.expand(),
            child: Row(
              children: [
                NavigationRail(
                  backgroundColor: Colors.white,
                  selectedIndex: _selectScreen(context),

                  /// 네일 메뉴 선택: 서브메일 표시 또는 이동
                  onDestinationSelected: (int index) {
                    /// reset 해야 다른 메뉴가 열려있고, 새로운 메뉴를 클릭했을 때 서브메뉴가 다시 열린다.
                    _controller.reset();

                    /// 동일한 메뉴를 클릭했들 때 초기화
                    /// 먼저 선택된 서브메뉴 아이템이 있었다면 초기화 되어야 한다.
                    ref.read(railSubMenuController.notifier).setSubMenuView(
                        index, _selectedMenuData(index));

                    /// 네일 페이지로 이동한다.
                    _onTabGoScreen(index, context);
                  },
                  //extended: ResponsiveLayout.isMaxWidth(context) > 1200 ? true: false,
                  extended: false,
                  labelType: NavigationRailLabelType.all,
                  groupAlignment: -0.5,
                  // -1.0 ~ 1.0
                  leading: Column(
                    children: <Widget>[
                      Text(
                        'HomeRail',
                        style: context.titleSmall,
                      ),
                    ],
                  ),
                  destinations: const <NavigationRailDestination>[
                    NavigationRailDestination(
                      icon: Icon(FluentIcons.people_28_regular),
                      selectedIcon: Icon(FluentIcons.people_28_filled),
                      label: Text('Settings'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(FluentIcons.people_28_regular),
                      selectedIcon: Icon(FluentIcons.people_28_filled),
                      label: Text('Information'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(FluentIcons.people_28_regular),
                      selectedIcon: Icon(FluentIcons.people_28_filled),
                      label: Text('Business'),
                    ),
                  ],
                ),
                const VerticalDivider(thickness: 1, width: 1),
                // This is the main content.
                Expanded(
                  child: Stack(
                    children: [

                      /// body Screen
                      widget.child,

                      /// Rial SubMenu control
                      Consumer(
                          builder: (BuildContext context, WidgetRef ref, _) {
                            SlideMenuState sts = ref.watch(railSubMenuController);

                            if (sts.menuData.isEmpty) return const SizedBox();

                            /// If there is a submenu, open the menu.
                            if (sts.onSubMenu) {
                              _controller.forward();
                            }
                            return Positioned(
                              left: 0.0,
                              top: 0.0,
                              child: OnHoverButton(builder: (bool onHover) {
                                if (!onHover && _controller.isCompleted) {
                                  _controller.reverse();
                                }
                                return SlideTransition(
                                  position: Tween<Offset>(
                                    begin: const Offset(-1, 0),
                                    end: Offset.zero,
                                  ).animate(_controller),
                                  child: FadeTransition(
                                      opacity: _controller,
                                      child: RailSubMenu(
                                        menuData: sts.menuData,
                                        selectedId: sts.selectedSubItemId,
                                        constraints: constraints,
                                        onHover: onHover,
                                        onSelected: (ItemMenuData menu) {
                                          ///** Item menu selected
                                          ref
                                              .read(railSubMenuController.notifier)
                                              .setSelectedItemMenu(menu.id);
                                          if (menu.routerPath != null) {
                                            GoRouter.of(context).go(
                                                menu.routerPath!);
                                          }
                                        },
                                      )),
                                );
                              }),
                            );
                          })
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
