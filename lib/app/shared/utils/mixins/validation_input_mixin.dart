part of shared;

/// use this mixin for all form field
mixin ValidatorMixin {
  static bool isEmail(String email) {
    RegExp regExp = RegExp(r'\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*');
    return regExp.hasMatch(email);
  }

  // example :
  // String? validateTextFieldIsRequired(String? value) {
  //   if (value == null || value.trim().isEmpty) return "this field is required";
  //   return null;
  // }

  // String? validateDropdownIsRequired(String? value) {
  //   if (value == null || value.trim().isEmpty) return "please select item";
  //   return null;
  // }
}
