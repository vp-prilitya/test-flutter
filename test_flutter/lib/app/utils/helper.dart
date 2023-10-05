extension StringExtensions on String {
  String formatBiasa() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }

  String formatJudul() {
    final array = toLowerCase().split(' ');
    return array.map((str) => str.formatBiasa()).join(' ');
  }
}
