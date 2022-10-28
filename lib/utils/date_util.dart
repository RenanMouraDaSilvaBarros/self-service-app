class DateUtil {
  static DateTime resetTime(DateTime date) {
    return DateTime(date.year, date.month, date.day, 0, 0, 0, 0, 0);
  }

  static formatUnitName(days) {
    String day = "";

    switch (days) {
      case 0:
        day = "até hoje";
        break;
      case 1:
        day = "$days dia";
        break;
      default:
        day = "$days dias";
        break;
    }

    return day;
  }
}
