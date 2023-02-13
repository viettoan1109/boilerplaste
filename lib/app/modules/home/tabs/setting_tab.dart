part of home;

class SettingTab extends GetView<HomeController> {
  const SettingTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Setting Tab'),
    );
  }
}
