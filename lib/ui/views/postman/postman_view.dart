import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'postman_viewmodel.dart';

class PostmanView extends StackedView<PostmanViewModel> {
  const PostmanView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PostmanViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }


  @override
  bool get initialiseSpecialViewModelsOnce => false;

  @override
  PostmanViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PostmanViewModel();
}
