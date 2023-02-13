part of home;

class EmailTab extends GetView<HomeController> {
  const EmailTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Email Tab'),
    );
  }
}
