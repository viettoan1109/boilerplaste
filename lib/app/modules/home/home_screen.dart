part of home;

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      body: Obx(() => _desktopBuilder()),
    );
  }

  _desktopBuilder() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Flexible(
          flex: 1,
          child: _Sidebar(
            data: controller.getSelectedProject(),
            onSelected: (index, value) {
              log("index : $index | label : ${value.label}");
              controller.switchTab(index);
            },
          ),
        ),
        Flexible(
          flex: 4,
          child: SingleChildScrollView(
            child: _buildContent(controller.currentTab.value),
          ),
        ),
      ],
    );
  }

  Widget _buildContent(HomePageTabs tab) {
    switch (tab) {
      case HomePageTabs.calendar:
        return controller.calendarTab;
      case HomePageTabs.report:
        return controller.reportTab;
      case HomePageTabs.email:
        return controller.emailTab;
      case HomePageTabs.profile:
        return controller.profileTab;
      case HomePageTabs.setting:
        return controller.settingTab;
      default:
        return controller.dashboardTab;
    }
  }
}
