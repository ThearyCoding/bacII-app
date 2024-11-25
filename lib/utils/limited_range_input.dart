import 'package:flutter/services.dart';

class LimitedRangeTextInputFormatter extends TextInputFormatter {
  final int min;
  final int max;

  LimitedRangeTextInputFormatter(this.min, this.max);

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    int? value = int.tryParse(newValue.text);

    if (value != null) {
      if (value < min) {
        value = min;
      } else if (value > max) {
        value = max;
      }
    }

    return TextEditingValue(
      text: value?.toString() ?? '',
      selection: TextSelection.fromPosition(
        TextPosition(offset: (value?.toString() ?? '').length),
      ),
    );
  }
}
