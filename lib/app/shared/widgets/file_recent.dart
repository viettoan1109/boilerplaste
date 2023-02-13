import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyRecentFiles extends StatelessWidget {
  const MyRecentFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Recent Files",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            SizedBox(
              width: double.infinity,
              child: DataTable(
                columnSpacing: 16,
                columns: const [
                  DataColumn(
                    label: Text("File Name"),
                  ),
                  DataColumn(
                    label: Text("Date"),
                  ),
                  DataColumn(
                    label: Text("Size"),
                  ),
                ],
                rows: List.generate(
                  demoRecentFiles.length,
                  (index) => recentFileData(demoRecentFiles[index]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RecentFile {
  final String? icon, title, date, size;

  RecentFile({this.icon, this.title, this.date, this.size});
}

List demoRecentFiles = [
  RecentFile(
    icon: "assets/images/icons/xd_file.svg",
    title: "XD File",
    date: "01-03-2021",
    size: "3.5mb",
  ),
  RecentFile(
    icon: "assets/images/icons/Figma_file.svg",
    title: "Figma File",
    date: "27-02-2021",
    size: "19.0mb",
  ),
  RecentFile(
    icon: "assets/images/icons/doc_file.svg",
    title: "Document File",
    date: "01-03-2021",
    size: "3.5mb",
  ),
  RecentFile(
    icon: "assets/images/icons/sound_file.svg",
    title: "Sound File",
    date: "27-02-2021",
    size: "19.0mb",
  ),
  RecentFile(
    icon: "assets/images/icons/media_file.svg",
    title: "Media File",
    date: "01-03-2021",
    size: "3.5mb",
  ),
  RecentFile(
    icon: "assets/images/icons/pdf_file.svg",
    title: "PDF File",
    date: "27-02-2021",
    size: "19.0mb",
  ),
  RecentFile(
    icon: "assets/images/icons/excle_file.svg",
    title: "Excel File",
    date: "01-03-2021",
    size: "3.5mb",
  ),

];

DataRow recentFileData(RecentFile recentFile) {
  return DataRow(cells: [
    DataCell(Row(
      children: [
        SvgPicture.asset(
          recentFile.icon!,
          height: 30,
          width: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(recentFile.title!),
        ),
      ],
    )),
    DataCell(Text(recentFile.date!)),
    DataCell(Text(recentFile.size!)),
  ]);
}
