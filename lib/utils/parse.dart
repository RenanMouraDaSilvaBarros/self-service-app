intToString(String value) {
  try {
   return int.parse(value);
  } catch (error) {
    return "";
  }
}
