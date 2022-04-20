extension KhmerPhoneNumber on String {
  bool isKhmerPhoneNumber() {
    final pattern = RegExp(r'^((\+?855)|(0?))([1-9][0-9])(\d{6,7})$');
    if (contains(pattern) == true) {
      return true;
    }
    return false;
  }

  String toKhmerPhoneNumber() {
    const replacedString = '855';
    final pattern = RegExp(r'^((\+?855)|(0?))([1-9][0-9])(\d{6,7})$');
    final newString = replaceAllMapped(
      pattern,
      (match) {
        return '$replacedString${match[4]}${match[5]}';
      },
    );
    return newString;
  }
}
