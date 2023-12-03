import 'receipt_text_style.dart';
import 'receipt_text_style_type.dart';

class ReceiptTextLeftCenterRight {
  ReceiptTextLeftCenterRight(
    this.leftText,
    this.centerText,
    this.rightText,
      {
    this.leftTextStyle = const ReceiptTextStyle(
      type: ReceiptTextStyleType.normal,
      useSpan: true,
    ),
    this.centerTextStyle = const ReceiptTextStyle(
      type: ReceiptTextStyleType.normal,
      useSpan: true,
    ),
    this.rightTextStyle = const ReceiptTextStyle(
      type: ReceiptTextStyleType.normal,
      useSpan: true,
    ),
  });

  final String leftText;
  final String centerText;
  final String rightText;

  final ReceiptTextStyle leftTextStyle;
  final ReceiptTextStyle centerTextStyle;
  final ReceiptTextStyle rightTextStyle;

  String get html => '''
    <div class="full-width inline-block">
      <p class="percentage-35 ${leftTextStyle.textSizeHtml}">$leftText</p>
      <p class="percentage-25 ${centerTextStyle.textSizeHtml}">$centerText</p>
      <p class="percentage-40 ${rightTextStyle.textSizeHtml}">$rightText</p>
    </div>
  ''';
}
