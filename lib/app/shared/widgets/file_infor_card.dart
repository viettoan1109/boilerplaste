import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FileInforCard extends StatelessWidget {
  final CloudStorageInfor infor;

  const FileInforCard({Key? key, required this.infor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(8),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: infor.color!.withOpacity(0.1),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: SvgPicture.asset(
                  infor.svgSrc!,
                  color: infor.color,
                ),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
            ],
          ),
          Text(infor.title!),
          ProgressLine(
            percentage: infor.percentage,
            color: infor.color,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${infor.numOfFiles} Files",
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                infor.totalStorage!,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ProgressLine extends StatelessWidget {
  const ProgressLine({
    Key? key,
    this.color = Colors.blue,
    required this.percentage,
  }) : super(key: key);

  final Color? color;
  final int? percentage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 5,
          decoration: BoxDecoration(
            color: color!.withOpacity(0.1),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        LayoutBuilder(
          builder: (context, constraints) => Container(
            width: constraints.maxWidth * (percentage! / 100),
            height: 5,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        ),
      ],
    );
  }
}

class CloudStorageInfor {
  final String? svgSrc, title, totalStorage;
  final int? numOfFiles, percentage;
  final Color? color;

  CloudStorageInfor({
    this.svgSrc,
    this.title,
    this.totalStorage,
    this.numOfFiles,
    this.percentage,
    this.color,
  });
}

List listStorageInfor = [
  CloudStorageInfor(
    title: "Documents",
    numOfFiles: 1258,
    svgSrc: "assets/images/icons/Documents.svg",
    totalStorage: "1.6GB",
    color: const Color(0xFF2697FF),
    percentage: 45,
  ),
  CloudStorageInfor(
    title: "Google Driver",
    numOfFiles: 2016,
    svgSrc: "assets/images/icons/google_drive.svg",
    totalStorage: "3.5GB",
    color: const Color(0xFFFFA113),
    percentage: 65,
  ),
  CloudStorageInfor(
    title: "One Driver",
    numOfFiles: 454,
    svgSrc: "assets/images/icons/one_drive.svg",
    totalStorage: "3.7GB",
    color: const Color(0xFFA4CDFF),
    percentage: 31,
  ),
  CloudStorageInfor(
    title: "Drop Box",
    numOfFiles: 1354,
    svgSrc: "assets/images/icons/drop_box.svg",
    totalStorage: "5.6GB",
    color: const Color(0xFF007EE5),
    percentage: 54,
  ),
];
