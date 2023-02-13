import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutterboilerplatev2/app/shared/widgets/storage_infor_card.dart';

import '../shared.dart';

class StorageDetail extends StatelessWidget {

  const StorageDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration:  BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),        
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const[
          Text("Storage Details", style: TextStyle(color: Colors.white, fontSize: 16),),
          SizedBox(height: 20),
          Chart(),
          StorageInforCard(
            svgSrc: "assets/images/icons/Documents.svg",
            title: "Documents Files",
            amountOfFiles: "1.3GB",
            numOfFiles: 1328,
          ),
          StorageInforCard(
            svgSrc: "assets/images/icons/media.svg",
            title: "Media Files",
            amountOfFiles: "1.3GB",
            numOfFiles: 1328,
          ),
          StorageInforCard(
            svgSrc: "assets/images/icons/folder.svg",
            title: "Folder Files",
            amountOfFiles: "1.3GB",
            numOfFiles: 1328,
          ),
          StorageInforCard(
            svgSrc: "assets/images/icons/unknown.svg",
            title: "Unknown Files",
            amountOfFiles: "1.3GB",
            numOfFiles: 1328,
          ),

        ],
      ),
    );
  }
}

class Chart extends StatelessWidget {
  const Chart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: 0,
              centerSpaceRadius: 70,
              startDegreeOffset: -90,
              sections: paiChartSelectionDatas,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(height: 16),
                Text(
                  "29.1",
                  style: TextStyle(color: Colors.white, height: 0.5, fontSize: 24),
                ),
                Text("of 128GB")
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<PieChartSectionData> paiChartSelectionDatas = [
  PieChartSectionData(
    color: Colors.indigo,
    value: 25,
    showTitle: false,
    radius: 25,
  ),
  PieChartSectionData(
    color: Color(0xFF26E5FF),
    value: 20,
    showTitle: false,
    radius: 22,
  ),
  PieChartSectionData(
    color: Color(0xFFFFCF26),
    value: 10,
    showTitle: false,
    radius: 19,
  ),
  PieChartSectionData(
    color: Color(0xFFEE2727),
    value: 30,
    showTitle: false,
    radius: 16,
  ),
  PieChartSectionData(
    color: Colors.white10,
    value: 25,
    showTitle: false,
    radius: 13,
  ),
];
