/// String replace.

extension String {

  /// Replace a target with a
  ///
  /// Example:
  ///
  ///     "hello".replace("l", "x") // "hexxo"
  ///
  public func replace(target: String, withString: String) -> String {
    return self.stringByReplacingOccurrencesOfString(
      target, withString: withString,
      options: NSStringCompareOptions.LiteralSearch,
      range: nil
    )
  }

}