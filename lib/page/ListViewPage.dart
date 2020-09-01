import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  var _scrollController =
      ScrollController(initialScrollOffset: 0, keepScrollOffset: true);

  bool _showArrowBtn = false;

  void _updateArrowBtnState(bool show) {
    setState(() {
      _showArrowBtn = show;
    });
  }

  @override
  Widget build(BuildContext context) {
    _scrollController.addListener(() {
      if (_scrollController.offset > 1000 && !_showArrowBtn) {
        _updateArrowBtnState(true);
      } else if (_scrollController.offset <= 1000 && _showArrowBtn) {
        _updateArrowBtnState(false);
      }
    });

    return Stack(
      children: <Widget>[
        ListView.builder(
          controller: _scrollController,
          itemBuilder: _buildItem,
          itemCount: 30,
          itemExtent: 80,
        ),
        _showArrowBtn
            ? GoToTopBtn(
                right: 16,
                bottom: 16,
                onPressed: () {
                  _scrollController.animateTo(0,
                      duration: Duration(milliseconds: 200),
                      curve: Curves.ease);
                },
              )
            : GoToTopBtn(
                right: 16,
                bottom: -100,
              ),
      ],
    );
  }

  Widget _buildItem(BuildContext context, int position) {
    return ListTile(
      leading: Icon(Icons.person),
      title: Text("球员${position + 1}"),
      subtitle: Text("拜仁慕尼黑"),
    );
  }

  Widget _separatorBuildItem(BuildContext context, int position) {
    return position % 2 == 0
        ? Divider(
            color: Colors.blue,
            thickness: 1,
          )
        : Divider(
            color: Colors.red,
            thickness: 1,
          );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}

class GoToTopBtn extends StatelessWidget {
  GoToTopBtn({Key key, this.right, this.bottom, this.onPressed})
      : super(key: key);

  double right = 16;
  double bottom = 16;
  void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: right,
      bottom: bottom,
      child: FloatingActionButton(
        child: Icon(Icons.arrow_upward),
        onPressed: onPressed,
      ),
    );
  }
}
