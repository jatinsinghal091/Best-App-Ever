import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_first_app/app/app.locator.dart';
import 'package:stacked/stacked.dart';

import 'post_viewmodel.dart';

List<String> list = [
  "diua",
  "dajdf",
  "dahdi",
  "fiaha",
  "diua",
  "dajdf",
  "dahdi",
  "fiaha",
  "diua",
  "dajdf",
  "dahdi",
  "fiaha",
  "diua",
  "dajdf",
  "dahdi",
  "fiaha",
  "diua",
  "dajdf",
  "dahdi",
  "fiaha",
  "diua",
  "dajdf",
  "dahdi",
  "fiaha",
  "diua",
  "dajdf",
  "dahdi",
  "fiaha",
  "diua",
  "dajdf",
  "dahdi",
  "fiaha",
  "diua",
  "dajdf",
  "dahdi",
  "fiaha",
];

class PostView extends StackedView<PostViewModel> {
  const PostView({Key? key}) : super(key: key);


  @override
  bool get disposeViewModel {
    print("disposable viewmodel");
    return false ;
  }


  @override
  bool get initialiseSpecialViewModelsOnce {
    return true;
  }

  @override
  Widget builder(
    BuildContext context,
    PostViewModel viewModel,
    Widget? child,
  ) {

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: [
      SystemUiOverlay.bottom
    ]);
    print(viewModel.isBusy);
    return
      Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Container(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0),
          child:
          viewModel.isBusy ?
Center(
  child: const CircularProgressIndicator(),
)              :
          Column(
            children: [
              MaterialButton(
                onPressed: viewModel.showModel,
                child: const Text("Show Dialog"),

              ),
              Expanded(
                child: ListView.builder(
                    key: const PageStorageKey('post-list-key'),
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title:  Text(list[index]),
                      );
                    }
                ),
              )
            ],
          ),
        ),
      );



    //   ViewModelBuilder<PostViewModel>.reactive(
    // initialiseSpecialViewModelsOnce: true,
    //   disposeViewModel: false,
    //     builder: (context, viewModel, child) => Scaffold(
    //           body: viewModel.isBusy ? const CircularProgressIndicator(color: Colors.brown,) : Center(
    //             child:
    //            Column(
    //              children: [
    //                MaterialButton(
    //                    onPressed: viewModel.showModel,
    //                  child: const Text("Show Dialog"),
    //
    //                ),
    //                Expanded(
    //                  child: ListView.builder(
    //                      key: const PageStorageKey('post-list-key'),
    //                      itemCount: list.length,
    //                      itemBuilder: (context, index) {
    //                        return ListTile(
    //                          title:  Text(list[index]),
    //                        );
    //                      }
    //                  ),
    //                )
    //              ],
    //            )
    //             ,
    //           ),
    //         ),
    //     viewModelBuilder: () {
    //       return locator<PostViewModel>();
    //     });

  // }





  @override
  PostViewModel viewModelBuilder(
    BuildContext context,
  ) => locator<PostViewModel>();
}



@override
  void onDispose(PostViewModel viewModel) {
    print("onDispose");
    // super.onDispose(viewModel);
  }

  @override
  PostViewModel viewModelBuilder(BuildContext context) {
   return  locator<PostViewModel>();
  }
}
