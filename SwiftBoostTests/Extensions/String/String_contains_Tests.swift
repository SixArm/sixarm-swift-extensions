import UIKit
import XCTest

class String_contains_Tests: XCTestCase {
  
  // MARK: - With Pattern
  
  func testPatternTrue() {
    XCTAssertTrue("hello world".contains("o.*o"))
  }

  func testPatternFalse() {
    XCTAssertFalse("hello world".contains("x.*x"))
  }

  // MARK: - With String
  
  func testStringTrue() {
    XCTAssertTrue("hello world".contains("o"))
  }

  func testStringFalse() {
    XCTAssertFalse("hello world".contains("x"))
  }

}
