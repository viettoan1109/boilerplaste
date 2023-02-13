part of home;

class CalendarTab extends GetView<HomeController> {
  const CalendarTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Calendar Tab'),
    );
  }
}
