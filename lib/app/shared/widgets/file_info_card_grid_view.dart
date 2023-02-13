import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterboilerplatev2/app/shared/widgets/file_infor_card.dart';

class FileInforCardGridView extends StatelessWidget {
  const FileInforCardGridView({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: listStorageInfor.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: childAspectRatio),
        itemBuilder: (context, indext) =>
            FileInforCard(infor: listStorageInfor[indext]));
  }
}
