part of home;

class HomeResponsiveScreen extends GetView<HomeController> {
  const HomeResponsiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      drawer: (ResponsiveBuilder.isDesktop(context))
          ? null
          : Drawer(
              child: Padding(
                padding: const EdgeInsets.only(top: kSpacing),
                child: _Sidebar(
                    data: controller.getSelectedProject(),
                    onSelected: (index, value) {
                      log("index : $index | label : ${value.label}");
                    }),
              ),
            ),
      body: SingleChildScrollView(
          child: ResponsiveBuilder(
        mobileBuilder: (context, constraints) {
          return _desktopBuilder(constraints);
        },
        tabletBuilder: (context, constraints) {
          return _desktopBuilder(constraints);
        },
        desktopBuilder: (context, constraints) {
          return _desktopBuilder(constraints);
        },
      )),
    );
  }

  _mobileBuilder() {
    return Column(children: [
      const SizedBox(height: kSpacing * (kIsWeb ? 1 : 2)),
      _buildHeader(onPressedMenu: () => controller.openDrawer()),
      const SizedBox(height: kSpacing / 2),
      const Divider(),
      _buildProfile(data: controller.getProfile()),
      const SizedBox(height: kSpacing),
      _buildProgress(axis: Axis.vertical),
      const SizedBox(height: kSpacing),
      _buildTeamMember(data: controller.getMember()),
      const SizedBox(height: kSpacing),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: kSpacing),
        child: GetPremiumCard(onPressed: () {}),
      ),
      const SizedBox(height: kSpacing * 2),
      _buildTaskOverview(
        data: controller.getAllTask(),
        headerAxis: Axis.vertical,
        crossAxisCount: 6,
        crossAxisCellCount: 6,
      ),
      const SizedBox(height: kSpacing * 2),
      _buildActiveProject(
        data: controller.getActiveProject(),
        crossAxisCount: 6,
        crossAxisCellCount: 6,
      ),
      const SizedBox(height: kSpacing),
      _buildRecentMessages(data: controller.getChatting()),
    ]);
  }

  _tabletBuilder(constraints) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          flex: (constraints.maxWidth < 950) ? 6 : 9,
          child: Column(
            children: [
              const SizedBox(height: kSpacing * (kIsWeb ? 1 : 2)),
              _buildHeader(onPressedMenu: () => controller.openDrawer()),
              const SizedBox(height: kSpacing * 2),
              _buildProgress(
                axis: (constraints.maxWidth < 950) ? Axis.vertical : Axis.horizontal,
              ),
              const SizedBox(height: kSpacing * 2),
              _buildTaskOverview(
                data: controller.getAllTask(),
                headerAxis: (constraints.maxWidth < 850) ? Axis.vertical : Axis.horizontal,
                crossAxisCount: 6,
                crossAxisCellCount: (constraints.maxWidth < 950)
                    ? 6
                    : (constraints.maxWidth < 1100)
                        ? 3
                        : 2,
              ),
              const SizedBox(height: kSpacing * 2),
              _buildActiveProject(
                data: controller.getActiveProject(),
                crossAxisCount: 6,
                crossAxisCellCount: (constraints.maxWidth < 950)
                    ? 6
                    : (constraints.maxWidth < 1100)
                        ? 3
                        : 2,
              ),
              const SizedBox(height: kSpacing),
            ],
          ),
        ),
        Flexible(
          flex: 4,
          child: Column(
            children: [
              const SizedBox(height: kSpacing * (kIsWeb ? 0.5 : 1.5)),
              _buildProfile(data: controller.getProfile()),
              const Divider(thickness: 1),
              const SizedBox(height: kSpacing),
              _buildTeamMember(data: controller.getMember()),
              const SizedBox(height: kSpacing),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kSpacing),
                child: GetPremiumCard(onPressed: () {}),
              ),
              const SizedBox(height: kSpacing),
              const Divider(thickness: 1),
              const SizedBox(height: kSpacing),
              _buildRecentMessages(data: controller.getChatting()),
            ],
          ),
        )
      ],
    );
  }

  _desktopBuilder(constraints) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          flex: (constraints.maxWidth < 1360) ? 4 : 3,
          child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(kBorderRadius),
                bottomRight: Radius.circular(kBorderRadius),
              ),
              child: _Sidebar(
                  data: controller.getSelectedProject(),
                  onSelected: (index, value) {
                    log("index : $index | label : ${value.label}");
                  })),
        ),
        Flexible(
          flex: 9,
          child: Column(
            children: [
              const SizedBox(height: kSpacing),
              _buildHeader(),
              const SizedBox(height: kSpacing * 2),
              _buildProgress(),
              const SizedBox(height: kSpacing * 2),
              _buildTaskOverview(
                data: controller.getAllTask(),
                crossAxisCount: 6,
                crossAxisCellCount: (constraints.maxWidth < 1360) ? 3 : 2,
              ),
              const SizedBox(height: kSpacing * 2),
              _buildActiveProject(
                data: controller.getActiveProject(),
                crossAxisCount: 6,
                crossAxisCellCount: (constraints.maxWidth < 1360) ? 3 : 2,
              ),
              const SizedBox(height: kSpacing),
            ],
          ),
        ),
        Flexible(
          flex: 4,
          child: Column(
            children: [
              const SizedBox(height: kSpacing / 2),
              _buildProfile(data: controller.getProfile()),
              const Divider(thickness: 1),
              const SizedBox(height: kSpacing),
              _buildTeamMember(data: controller.getMember()),
              const SizedBox(height: kSpacing),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kSpacing),
                child: GetPremiumCard(onPressed: () {}),
              ),
              const SizedBox(height: kSpacing),
              const Divider(thickness: 1),
              const SizedBox(height: kSpacing),
              _buildRecentMessages(data: controller.getChatting()),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildHeader({Function()? onPressedMenu}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kSpacing),
      child: Row(
        children: [
          if (onPressedMenu != null)
            Padding(
              padding: const EdgeInsets.only(right: kSpacing),
              child: IconButton(
                onPressed: onPressedMenu,
                icon: const Icon(EvaIcons.menu),
                tooltip: "menu",
              ),
            ),
          const Expanded(child: _Header()),
        ],
      ),
    );
  }

  Widget _buildProgress({Axis axis = Axis.horizontal}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kSpacing),
      child: (axis == Axis.horizontal)
          ? Row(
              children: [
                Flexible(
                  flex: 5,
                  child: ProgressCard(
                    data: const ProgressCardData(
                      totalUndone: 10,
                      totalTaskInProress: 2,
                    ),
                    onPressedCheck: () {},
                  ),
                ),
                const SizedBox(width: kSpacing / 2),
                const Flexible(
                  flex: 4,
                  child: ProgressReportCard(
                    data: ProgressReportCardData(
                      title: "1st Sprint",
                      doneTask: 5,
                      percent: .3,
                      task: 3,
                      undoneTask: 2,
                    ),
                  ),
                ),
              ],
            )
          : Column(
              children: [
                ProgressCard(
                  data: const ProgressCardData(
                    totalUndone: 10,
                    totalTaskInProress: 2,
                  ),
                  onPressedCheck: () {},
                ),
                const SizedBox(height: kSpacing / 2),
                const ProgressReportCard(
                  data: ProgressReportCardData(
                    title: "1st Sprint",
                    doneTask: 5,
                    percent: .3,
                    task: 3,
                    undoneTask: 2,
                  ),
                ),
              ],
            ),
    );
  }

  Widget _buildTaskOverview({
    required List<TaskCardData> data,
    int crossAxisCount = 6,
    int crossAxisCellCount = 2,
    Axis headerAxis = Axis.horizontal,
  }) {
    return StaggeredGridView.countBuilder(
      crossAxisCount: crossAxisCount,
      itemCount: data.length + 1,
      addAutomaticKeepAlives: false,
      padding: const EdgeInsets.symmetric(horizontal: kSpacing),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return (index == 0)
            ? Padding(
                padding: const EdgeInsets.only(bottom: kSpacing),
                child: _OverviewHeader(
                  axis: headerAxis,
                  onSelected: (task) {},
                ),
              )
            : TaskCard(
                data: data[index - 1],
                onPressedMore: () {},
                onPressedTask: () {},
                onPressedContributors: () {},
                onPressedComments: () {},
              );
      },
      staggeredTileBuilder: (int index) => StaggeredTile.fit((index == 0) ? crossAxisCount : crossAxisCellCount),
    );
  }

  Widget _buildActiveProject({
    required List<ProjectCardData> data,
    int crossAxisCount = 6,
    int crossAxisCellCount = 2,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kSpacing),
      child: _ActiveProjectCard(
        onPressedSeeAll: () {},
        child: StaggeredGridView.countBuilder(
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: crossAxisCount,
          itemCount: data.length,
          addAutomaticKeepAlives: false,
          mainAxisSpacing: kSpacing,
          crossAxisSpacing: kSpacing,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return ProjectCard(data: data[index]);
          },
          staggeredTileBuilder: (int index) => StaggeredTile.fit(crossAxisCellCount),
        ),
      ),
    );
  }

  Widget _buildProfile({required Profile data}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kSpacing),
      child: _ProfileTile(
        data: data,
        onPressedNotification: () {},
      ),
    );
  }

  Widget _buildTeamMember({required List<ImageProvider> data}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kSpacing),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _TeamMember(
            totalMember: data.length,
            onPressedAdd: () {},
          ),
          const SizedBox(height: kSpacing / 2),
          ListProfileImage(maxImages: 6, images: data),
        ],
      ),
    );
  }

  Widget _buildRecentMessages({required List<ChattingCardData> data}) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: kSpacing),
        child: _RecentMessages(onPressedMore: () {}),
      ),
      const SizedBox(height: kSpacing / 2),
      ...data
          .map(
            (e) => ChattingCard(data: e, onPressed: () {}),
          )
          .toList(),
    ]);
  }
}
