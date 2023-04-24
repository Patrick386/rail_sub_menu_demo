import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

import 'package:rail_sub_menu/extensions.dart';

import '../expansionTileX/expansion_tile_x.dart';
import '../on_hover_button.dart';
import 'model/slide_menu_data.dart';


/// Used with navigation rails.
/// Can be used without navigation rails.
class RailSubMenu extends StatefulWidget {
  const RailSubMenu(
      {Key? key,
        required this.constraints,
        required this.menuData,
        this.background = Colors.white,
        this.selectedId,
        this.onSelected, this.onClosed})
      : super(key: key);
  final BoxConstraints constraints;
  final String? selectedId;
  final ValueChanged<ItemMenuData>? onSelected;
  final List<SlideMenuData> menuData;
  final Color background;
  final VoidCallback? onClosed;

  @override
  State<RailSubMenu> createState() => _RailSubMenuState();
}

class _RailSubMenuState extends State<RailSubMenu> {
  String? selectedId;



  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // logger.info('selectedId:$selectedId');
    // logger.info('menuData>>:${widget.menuData}');
    selectedId = widget.selectedId;
    return OnHoverButton(builder: (bool isHovered) {
      return Container(
        width: 210,
        height: widget.constraints.maxHeight,
        margin: const EdgeInsets.only(right: 4.0),

        /// Submenu frame
        decoration: BoxDecoration(
          color: widget.background,//const Color(0xFFF4F6FC),
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0)),
          boxShadow: [
            if(isHovered)
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                //color: Colors.transparent,
                spreadRadius: 0,
                blurRadius: 2,
                offset: const Offset(2, 0),
                //first parameter of offset is left-right
                //second parameter is top to down
              ),
          ],
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Column(
              children: [
                /// 서브메뉴 닫기
                ListTile(trailing:    IconButton(onPressed: widget.onClosed, icon: const Icon(Icons.keyboard_arrow_left),)),
                SizedBox(height: 20.0),
                ...widget.menuData.mapIndexed((int index, SlideMenuData e) {

                  if(e.itemMenu.isNotEmpty){
                    return _ExpansionMenu(
                      key: ValueKey(e.header!.id),
                      /// Expand if the first menu configuration is Expansion
                      initiallyExpanded: index == 0,
                      title: e.header!.title,
                      children: [
                        ...e.itemMenu
                            .map((ItemMenuData e) => _MenuItem(
                          selected: e.id == selectedId,
                          title: e.title,
                          onTap: () {
                            setState(() {});
                            widget.onSelected!(e);

                          },
                        ))
                            .toList(),
                      ],
                    );
                  }else{
                    if(e.header==null) return const SizedBox();
                    return _MenuItem(
                      selected: e.header!.id == selectedId,
                      title: e.header!.title,
                      onTap: () {
                        setState(() {});
                        widget.onSelected!(e.header!);
                      },
                    );
                  }

                }
                ).toList(),

              ],
            ),
          ),
        ),
      );
    },);

  }
}

class _ExpansionMenu extends StatefulWidget {
  const _ExpansionMenu({Key? key, required this.title, required this.children, this.initiallyExpanded = false})
      : super(key: key);

  final String title;
  final List<Widget> children;
  final bool initiallyExpanded;
  @override
  State<_ExpansionMenu> createState() => _ExpansionMenuState();
}

class _ExpansionMenuState extends State<_ExpansionMenu> {
  MaterialColor activeColor = Colors.blue;
  Color defaultColor = const Color(0xFF454746); //Colors.white54;

  Color activeColor2 = const Color(0xFFC6D0FE); // blu (Selected item hover color)
  Color hoverColor = const Color(0xFFE6E8ED); // Gray

  bool tileExpanded = false; // default
  bool tileHovered = false; // default
  bool item1Hovered = false; // default
  bool item2Hovered = false; // default
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        tileHovered = true;
        setState(() {});
      },
      onExit: (_) {
        tileHovered = false;
        setState(() {});
      },
      child: Theme(
        data: Theme.of(context).copyWith(
          // 'unselectedWidgetColor' applies to just the icons and only when tile is unselected
          unselectedWidgetColor: tileHovered ? activeColor : defaultColor,
          // to remove the default border
          dividerColor: Colors.transparent,
        ),
        child: ListTileTheme(
          minLeadingWidth: 28,
          child: ExpansionTileX(
            initiallyExpanded: widget.initiallyExpanded,
            //headerRadius: BorderRadius.all(Radius.circular(10.0)),
            //headerColor:  tileHovered ? hoverColor :  Colors.transparent,
            headerColor:  Colors.transparent,
            title: Text(widget.title,
                style: context.titleSmall?.copyWith(
                    fontWeight:
                    tileHovered || tileExpanded ? FontWeight.w600 : null)),
            tilePadding: EdgeInsets.zero,
            //backgroundColor: Colors.blue, // Panel background color
            //backgroundColor: Theme.of(context).primaryColor.withOpacity(0.025),
            childrenPadding: EdgeInsets.zero,
            //expandedAlignment: Alignment.centerRight,
            expandedCrossAxisAlignment: CrossAxisAlignment.end,
            children: widget.children,
          ),
        ),
      ),
    );
  }
}

class _MenuItem extends StatefulWidget {
  const _MenuItem({
    Key? key,
    this.selected = false,
    this.activeColor,
    this.defaultColor,
    required this.title,
    this.onTap,
  }) : super(key: key);
  final Color? activeColor;
  final Color? defaultColor;
  final String title;
  final VoidCallback? onTap;
  final bool selected;

  @override
  State<_MenuItem> createState() => _MenuItemState();
}

class _MenuItemState extends State<_MenuItem> {
  late Color activeColor;
  Color activeColor2 = const Color(0xFFC6D0FE); // blu (Selected item hover color)
  Color hoverColor = const Color(0xFFE6E8ED); // Gray
  late Color defaultColor; //Colors.white54;
  bool item1Hovered = false; // default
  bool item2Hovered = false; // default

  @override
  void initState() {
    activeColor = widget.activeColor ?? const Color(0xFFDBE2FD); // blu
    defaultColor = widget.defaultColor ?? Colors.transparent;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        item1Hovered = true;
        setState(() {});
      },
      onExit: (_) {
        item1Hovered = false;
        setState(() {});
      },
      child: Container(
        /// Item menu
        decoration: BoxDecoration(
            color: widget.selected || item1Hovered ? (item1Hovered? (widget.selected? activeColor2: hoverColor) : activeColor) : defaultColor,
            borderRadius: const BorderRadius.all(Radius.circular(50.0))),
        child: ListTile(
          contentPadding: const EdgeInsets.only(left: 20),
          title: Text(widget.title,
              style: context.titleSmall?.copyWith(
                  fontWeight: widget.selected || item1Hovered
                      ? FontWeight.w600
                      : null)),
          onTap: widget.onTap,
        ),
      ),
    );
  }
}
