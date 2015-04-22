/// String contains pattern.

extension String {

  /// Does a string contain a regex pattern?
  ///
  /// Example: does a string contain two "o" letters?
  /// 
  ///     "hello world".contains("o.*o") // true
  ///
  /// :param: regex A regular expression pattern
  /// :param: options NSRegularExpressionOptions; default is nil.
  /// :returns: true if the string contains the pattern.
  ///
  public func contains(pattern: String, options: NSRegularExpressionOptions = nil) -> Bool {
    return rangeOfString(pattern, options: .RegularExpressionSearch) != nil
  }

  /// Does a string contain a target string?
  ///
  /// Examples:
  ///
  ///     "hello world".contains("w") // true
  ///     "hello world".contains("x") // false
  ///
  /// :param: target Any string
  /// :returns: true if the string contains the target string.
  ///
  func contains(target: String) -> Bool {
    return self.rangeOfString(target) != nil
  }
  
}