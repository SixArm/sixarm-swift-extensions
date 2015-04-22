/// String substring.
///
/// :author: Joel Parker Henderson ( https://joelparkerhenderson.com )
/// :license: GPL ( https://www.gnu.org/copyleft/gpl.html )

import Foundation

extension String {

  /// Get a substring.
  ///
  /// Example:
  ///
  ///     "abcdefghi".substring(2) // "cdefghi"
  ///
  /// :param: startIndex -- the start index, inclusive.
  /// :returns: the substring at start index inclusive to the end of the string.
  ///
  func substring(startIndex: Int) -> String {
    return substringWithRange(Range<String.Index>(start: advance(self.startIndex, startIndex), end: self.endIndex))
  }

  /// Get a substring.
  ///
  /// Example:
  ///
  ///     "abcdefghi".substring(2,5) // "cde"
  ///
  /// :param: startIndex -- the start index, inclusive.
  /// :param: endIndex -- the stop index, exclusive.
  /// :returns: the substring at start index inclusive to stop index exclusive.
  ///
  func substring(startIndex: Int, endIndex: Int) -> String {
    return self.substringWithRange(Range<String.Index>(start: advance(self.startIndex, startIndex), end: advance(self.startIndex, endIndex - 1)))
   }

}