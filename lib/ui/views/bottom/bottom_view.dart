import 'package:flutter/material.dart';
import 'package:my_first_app/ui/views/post/post_view.dart';
import 'package:my_first_app/ui/views/postman/postman_view.dart';
import 'package:stacked/stacked.dart';

import 'bottom_viewmodel.dart';

class BottomView extends StackedView<BottomViewModel> {
  const BottomView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    BottomViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: viewModel.currentIndex,
        onTap: viewModel.setIndex,
        items: const [
          BottomNavigationBarItem(label: "abc", icon: Icon(Icons.abc_rounded)),
          BottomNavigationBarItem(label: "alarm",icon: Icon(Icons.access_alarm_rounded))
        ],
      ),
      body: getViewData(viewModel.currentIndex)
    );
  }


  Widget getViewData(int index) {
     switch(index) {
      case 0:
        return const PostView();
      default:
      return  const PostmanView();
    }
  }

  @override
  void onDispose(BottomViewModel viewModel) {

  }

  @override
  BottomViewModel viewModelBuilder(
    BuildContext context,
  ) {

  return  BottomViewModel();
  }
}
