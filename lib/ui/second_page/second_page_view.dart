import 'package:cal_c/ui/second_page/second_page_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SecondPageViewModel>.reactive(
        viewModelBuilder: () => SecondPageViewModel(),
        builder: (context, viewModel, child) {
          return Container();
        });
  }
}
