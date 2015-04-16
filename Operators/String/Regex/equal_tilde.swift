/// String Regex =~ operator that matches a string with a regular expression
///
/// Cite: http://benscheirman.com/2014/06/regex-in-swift/
/// Cite: http://stackoverflow.com/questions/27880650/swift-extract-regex-matches
///
/// :author: Joel Parker Henderson (https://joelparkerhenderson.com)
/// :license: GPL (https://www.gnu.org/copyleft/gpl.html)

import Foundation

infix operator =~ {}

func =~ (aString: String!, pattern: String!) -> Range<String.Index>? {
  return aString.rangeOfString(pattern, options: .RegularExpressionSearch)
}
