part of shared;

class InputField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String labelText;
  final String placeholder;
  final Color color;
  final bool password;
  final String? Function(String?)? validator;

  const InputField({
    Key? key,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.labelText = '',
    this.placeholder = '',
    this.color = Colors.white,
    this.password = false,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: Colors.transparent,
        contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: color,
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: color,
          ),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: labelText,
        hintText: placeholder,
        filled: true,
        isDense: true,
      ),
      controller: controller,
      keyboardType: keyboardType,
      obscureText: password,
      autocorrect: false,
      validator: validator,
    );
  }
}
