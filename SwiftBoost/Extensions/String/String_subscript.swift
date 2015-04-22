/// String subscript.

extension String {

  /// Get a subscript index of a string.
  ///
  /// Example:
  ///
  ///     "abcdefghi"[1] // "b"
  ///
  /// :param: range
  /// :returns: the string that is at the index.
  ///
  subscript(index: Int) -> Character {
    return self[advance(startIndex, index)]
  }
  
  /// Get a subscript range of a string.
  ///
  /// Example:
  ///
  ///     "abcdefghi".subscript[1..3] // "bc"
  ///
  /// :param: range
  /// :returns: the string that is in the range, from start inclusive to end exclusive.
  ///
  subscript(range: Range<Int>) -> String {
    return self[advance(startIndex, range.startIndex)..<advance(startIndex, range.endIndex)]
  }

}