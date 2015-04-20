/// Array contains
///
/// :author: Joel Parker Henderson ( https://joelparkerhenderson.com )
/// :license: GPL ( https://www.gnu.org/copyleft/gpl.html )

import CoreFoundation

extension Array {

  /// Does the array contain a given element?
  ///
  /// This function is suitable for typical Swift objects.
  ///
  /// This is logically equivalent to the 
  /// Swift global function `contains`.
  ///
  /// Example:
  ///
  ///     let items = ["a", "b"]
  ///     let item = "b"
  ///     items.contains(item) // true
  ///
  /// :param: elem the element
  /// :returns: true iff the array contains the element
  ///
  func contains<T : Equatable>(elem: T) -> Bool {
    for e in self {
      if e as? T == elem {
        return true
      }
    }
    return false
  }

  /// Does the array contain a given element?
  ///
  /// This function is useful because the typical Swift
  /// function `contains` doesn't do NSObject comparisons.
  ///
  /// Example:
  ///
  ///     let items = ["a" as CFString, "b" as CFString]
  ///     let item = "b" as CFString
  ///     items.contains(item) // true
  ///
  /// If Swift ever adds this capability to the language,
  /// then we will change this function's implementation
  /// to use whatever Swift provides, which should be faster.
  ///
  /// :param: elem the element
  /// :returns: true iff the array contains the element
  ///
  func contains(elem: NSObject) -> Bool {
    for e in self {
      if e as? NSObject == elem {
        return true
      }
    }
    return false
  }
    
}
