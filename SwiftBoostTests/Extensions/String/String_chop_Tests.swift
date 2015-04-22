import UIKit
import XCTest
import SwiftBoost

class String_chop_Tests: XCTestCase {
  
  func testContent() {
    XCTAssertEqual("abc".chop(), "ab")
  }

  func testContentWithCount() {
    XCTAssertEqual("abc".chop(2), "a")
  }

  func testContentWithCountGreaterThanStringLengthMustReturnBlank() {
    XCTAssertEqual("abc".chop(99), "")
  }

  func testBlankMustReturnBlank() {
    XCTAssertEqual("".chop(), "")
  }
  

}
