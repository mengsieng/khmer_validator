extension KhmerPhoneNumber on String {
  bool isKhmerPhoneNumber() {
    final pattern = RegExp(r'^((\+?855)|(0?))([1-9][0-9])(\d{6,7})$');
    if (contains(pattern) == true) {
      return true;
    }
    return false;
  }

  String toKhmerPhoneNumber() {
    return "855$this";
  }
}
