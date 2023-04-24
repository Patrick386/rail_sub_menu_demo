import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:nanoid/nanoid.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:rail_sub_menu/extensions.dart';
import 'package:rail_sub_menu/page/submenu_controller.dart';
import '../router/app_router.dart';
import '../service/shared_storage.dart';
import '../widgets/rail_sub_menu/model/slide_menu_data.dart';
import '../widgets/rail_sub_menu/rail_sub_menu.dart';
import '../widgets/rail_sub_menu/state/slide_menu_state.dart';

class HomeMenuRail extends ConsumerStatefulWidget {
  const HomeMenuRail({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  ConsumerState<HomeMenuRail> createState() => _HomeMenuRailState();
}

class _HomeMenuRailState extends ConsumerState<HomeMenuRail>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool onSubMenu = false;
  int selectedRailIndex = 0;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 150));

    /// 캐시된 네일 포커스 인덱스를 가져옵니다.
    /// 저장된 인텍스가 없으면: 0
    selectedRailIndex = SharedDisk.getNavigationRailIndex();
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
              routerName: AppRoutes.setting_subpage1),
          ItemMenuData(
              id: nanoid(),
              title: 'SUB-PAGE 2',
              routerName: AppRoutes.setting_subpage2),
        ]),
    SlideMenuData(
        header: ItemMenuData(id: nanoid(), title: 'SUBMENU B'),
        itemMenu: [
          ItemMenuData(
              id: nanoid(),
              title: 'SUB-PAGE 1',
              routerName: AppRoutes.setting_subpage1),
          ItemMenuData(id: nanoid(), title: 'SUB-PAGE 2'),
        ]),
    SlideMenuData(
      /// TYPE2: only header menu
      header: ItemMenuData(
          id: nanoid(),
          title: 'HEADER MENU',
          routerName: AppRoutes.setting_subpage2),
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
              routerName: AppRoutes.business_subpage1),
          ItemMenuData(
              id: nanoid(),
              title: 'SUB-PAGE 2',
              routerName: AppRoutes.business_subpage2),
        ]),
    SlideMenuData(
        header: ItemMenuData(id: nanoid(), title: 'SUBMENU B'),
        itemMenu: [
          ItemMenuData(
              id: nanoid(),
              title: 'SUB-PAGE 1',
              routerName: AppRoutes.business_subpage1),
          ItemMenuData(
              id: nanoid(),
              title: 'SUB-PAGE 2',
              routerName: AppRoutes.business_subpage2),
          ItemMenuData(
              id: nanoid(),
              title: 'SUB-PAGE 3',
              routerName: AppRoutes.business_subpage3),
        ]),
    SlideMenuData(
      /// TYPE2: only header menu
      header: ItemMenuData(
          id: nanoid(),
          title: 'HEADER MENU',
          routerName: AppRoutes.business_subpage1),
    ),
  ];

  /// 서브메뉴가 있는 경우
  List<SlideMenuData>? _selectedMenuData(int index) {
    switch (index) {
      case 0:
        return settingsMenu;

      /// information
      case 1:
        break;

      case 2:
        return businessMenu;
    }
    return null;
  }



  /// 네일 메인메뉴 클릭했을 body 에 출력하는 화면
  /// 서브메뉴가 있을 경우 처음 보여줄 페이지
  _onTabGoScreen({required BuildContext context, required int index}) {
    switch (index) {
      case 0:
        GoRouter.of(context).goNamed(AppRoutes.settings);
        break;
      case 1:
        GoRouter.of(context).goNamed(AppRoutes.information);
        break;
      case 2:
        GoRouter.of(context).goNamed(AppRoutes.business);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) => Scaffold(
              body: ConstrainedBox(
                constraints: BoxConstraints.expand(),
                child: Row(
                  children: [
                    NavigationRail(
                      backgroundColor: const Color(0xFFF4F6FC),
                      selectedIndex: selectedRailIndex,
                      onDestinationSelected: (int index) {
                        /// 네일 메뉴 탭 선택: 서브메뉴 표시 또는 이동
                        setState(() {
                          selectedRailIndex = index;

                          /// index caching
                          SharedDisk.setNavigationRailIndex(index);
                        });

                        /// reset 해야 다른 메뉴가 열려있고, 새로운 메뉴를 클릭했을 때 서브메뉴가 다시 열린다.
                        _controller.reset();

                        /// 동일한 메뉴를 클릭했들 때 초기화
                        /// 먼저 선택된 서브메뉴 아이템이 있었다면 초기화 되어야 한다.
                        ref
                            .read(SubMenuController.provider.notifier)
                            .setSubMenuView(index, _selectedMenuData(index));

                        /// 네일 페이지로 이동한다.
                        _onTabGoScreen(context: context, index: index);
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
                    const VerticalDivider(
                        thickness: 1, width: 0.5, color: Colors.grey),

                    /// Submenu control
                    _SubMenuControl(
                        controller: _controller, constraints: constraints),

                    /// This is the main content.
                    Expanded(
                      child: widget.child,
                    )
                  ],
                ),
              ),
            ));
  }
}

class _SubMenuControl extends ConsumerWidget {
  const _SubMenuControl(
      {Key? key, required this.constraints, required this.controller})
      : super(key: key);
  final AnimationController controller;
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SlideMenuState subMenuState = ref.watch(SubMenuController.provider);
    SubMenuController ctr = ref.read(SubMenuController.provider.notifier);

    /// 서브메뉴가 없으면
    if (subMenuState.menuData.isEmpty) return const SizedBox();

    /// 서브메뉴가 있을 경우 표시한다.
    //logger.info('상태:${sts.toString()} ${_controller.status}');
    if (subMenuState.onSubMenu) {
      controller.forward();
    }
    return Visibility(
      visible: subMenuState.visible,
      //maintainAnimation: true,
      //maintainState: true,
      child: AnimatedOpacity(
        opacity: subMenuState.visible ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 500),
        child: RailSubMenu(
          background: const Color(0xFFF4F6FC),
          menuData: subMenuState.menuData,
          selectedId: subMenuState.selectedSubItemId,
          constraints: constraints,
          onClosed: () {
            ctr.setVisibility(false);
          },
          onSelected: (ItemMenuData menu) {
            ///** 아이템 메뉴를 선택했을 경우
            ref
                .read(SubMenuController.provider.notifier)
                .setSelectedItemMenu(menu.id);
            if (menu.routerName != null) {
              GoRouter.of(context).goNamed(menu.routerName!);
            }
          },
        ),
      ),
    );
  }
}
