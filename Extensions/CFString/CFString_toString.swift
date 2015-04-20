/// Cast a CFString to a Swift String.
///
/// Ideally Apple will add something like this to the language or compiler,
/// such as automatic toll-free casting from a CFString to a Swift String.
//
/// :author: Joel Parker Henderson ( https://joelparkerhenderson.com )
/// :license: GPL ( https://www.gnu.org/copyleft/gpl.html )

import Foundation

extension CFString {

  /// Cast a CFString to a Swift String.
  ///
  /// Example:
  ///
  ///     let cf = "hello"
  ///     cf.toString() #=> "hello" as a Swift String
  ///
  /// :returns: the same text cast to a Swift String
  ///
  public func toString() -> String {
    return (self as NSString) as String
  }
  
}
