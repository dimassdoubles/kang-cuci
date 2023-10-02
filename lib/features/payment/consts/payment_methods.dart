enum PaymentMethods {
  gopay("gopay", "Gopay", "assets/icons/ic-gopay.svg"),
  bca("bca", "Transfer BCA", "assets/icons/ic-bca.svg");

  const PaymentMethods(this.code, this.label, this.iconPath);
  final String code;
  final String label;
  final String iconPath;
}
