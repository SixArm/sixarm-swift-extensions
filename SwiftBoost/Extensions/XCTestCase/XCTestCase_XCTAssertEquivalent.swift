/// XCTest XCTAssertEquivalent.

import Foundation
import XCTest

extension XCTestCase {
  
  /// Assert two objects are equivalent,
  /// which is either equal or both nil.
  ///
  /// Currently, this only supports Dictionary<K, NSObject?>
  /// because this structure is our immediate need.
  ///
  /// TODO: generalize this such as:
  ///
  ///     func XCTAssertEquivalent<T : Equatable>(expression1: @autoclosure () -> T?, _ expression2: @autoclosure () -> T, _ message: String? = nil, file: String = __FILE__, line: UInt = __LINE__)
  ///
  
  func XCTAssertEquivalent<K: Equatable>(obj1: Dictionary<K, NSObject?>, _ obj2: Dictionary<K, NSObject?>, _ message: String? = nil, file: String = __FILE__, line: UInt = __LINE__) {
    var m = "XCTAssertEquivalent failed - " + (message ?? "")

    // First, compare just the keys, because this is typically
    // more efficient than comparing the values.

    let obj1KeySet = Set(obj1.keys)
    let obj2KeySet = Set(obj2.keys)
    
    if obj1KeySet != obj2KeySet {
      m += "The keys are different. "

      let obj1KeySetUnique = obj1KeySet.subtract(obj2KeySet)
      let obj2KeySetUnique = obj2KeySet.subtract(obj1KeySet)

      if obj1KeySetUnique.count > 0 {
        m += "Object 1 has keys that are not in object 2: \(obj1KeySetUnique)"
        self.recordFailureWithDescription(m, inFile: file, atLine: line, expected: true)
      }

      if obj2KeySetUnique.count > 0 {
        m += "Object 2 has keys that are not in object 1: \(obj2KeySetUnique)"
        self.recordFailureWithDescription(m, inFile: file, atLine: line, expected: true)
      }

    }
    
    // Second, compare the values. 
    // When we reach this, we know the key sets are equal.

    for key in obj1.keys {
      let val1 = obj1[key]
      let val2 = obj2[key]
      if (val1 == nil && val2 == nil) {
        //noop
      }
      else if (val1 == nil && val2 != nil) {
        m += "The key \(key) has a nil for object 1, and a value for object 2"
        self.recordFailureWithDescription(m, inFile: file, atLine: line, expected: true)
      }
      else if (val1 != nil && val2 == nil) {
        m += "The key \(key) has a value for object 1, and a value for item 2"
        self.recordFailureWithDescription(m, inFile: file, atLine: line, expected: true)
      }
      else if (val1! != val2!){
        m += "The key \(key) has a value for object 1 that is different than the value for item 2"
        self.recordFailureWithDescription(m, inFile: file, atLine: line, expected: true)
      }
    }
  }

}