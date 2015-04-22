/// String length.

extension String {
  
  /// Get the string length, as determined by `count`.
  ///
  /// Example:
  ///
  ///     "abc".length // 3
  ///
  /// Using `count` is the preferred way in Swift to count
  /// the user-visible symbols. If you are using Unicode 16,
  /// or emoji, or character systems with invisible characters,
  /// then read up on these and the differences in how Swift counts.
  ///
  var length: Int {
    get {
      return count(self)
    }
  }

}
