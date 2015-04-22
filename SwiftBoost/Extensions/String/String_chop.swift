extension String {

  /// Chop trailing characters from a string.
  ///
  /// Example:
  ///
  ///     "abcdef".chop() // "abcde"
  ///     "abcdef".chop(2) // "abcd"
  ///
  /// :param: count -- the number of characters to chop; default 1.
  /// :returns: a new string without the trailing characters.
  ///
  public func chop(_ n: Int = 1) -> String {
    let len = count(self)
    let endIndex = (len < n) ? 0 : len - n
    return self.substringToIndex(advance(self.startIndex, endIndex))
  }

}