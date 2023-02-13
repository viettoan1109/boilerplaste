part of home;

class ProfileTab extends GetView<HomeController> {
  const ProfileTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Profile Tab'),
    );
  }
}
