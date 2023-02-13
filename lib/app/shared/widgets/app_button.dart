part of shared;

class AppButton extends StatelessWidget {
  bool selected;
  String label;
  Function() onPressed;
  double? minimumSize;
  double? paddingSymmetric;
  AppButton({
    Key? key,
    required this.selected,
    required this.label,
    required this.onPressed,
    this.minimumSize,
    this.paddingSymmetric,
  }) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingSymmetric ?? kSpacing / 4),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          minimumSize: minimumSize != null ? Size.fromHeight(minimumSize!) : const Size.fromHeight(50),
          foregroundColor: selected ? kFontColorPallets[0] : kFontColorPallets[2],
          backgroundColor: selected ? Theme.of(Get.context!).cardColor : Theme.of(Get.context!).canvasColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(label),
      ),
    );
  }
}
