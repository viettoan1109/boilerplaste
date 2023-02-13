part of home;

class ReportTab extends GetView<HomeController> {
  const ReportTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Column(
        children: [
          _Header(context),
          const SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 5,
                  child: Column(
                    children: const [
                      MyFile(),
                      MyRecentFiles(),
                    ],
                  )),
              Expanded(
                  flex: 2,
                  child: Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: const StorageDetail(),
                  ))
            ],
          )
        ],
      ),
    ));
  }

  Widget _Header(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Reports",
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        const Spacer(
          flex: 2,
        ),
        Expanded(
            child: TextField(
          decoration: InputDecoration(
            hintText: "Search",
            fillColor: Theme.of(context).cardColor,
            filled: true,
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            suffixIcon: InkWell(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: const BoxDecoration(
                      color: kPrimaryColorDark,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: SvgPicture.asset("assets/images/vector/Search.svg"),
                  ),
                )),
          ),
        )),
        Container(
          margin: const EdgeInsets.only(left: 16),
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            color: kCardColor,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: Colors.white10),
          ),
          child: Row(
            children: [
              Image.asset(
                "assets/images/raster/avatar-1.png",
                height: 38,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text("Angelina phương trinh"),
              ),
              const Icon(Icons.keyboard_arrow_down),
            ],
          ),
        )
      ],
    );
  }
}
