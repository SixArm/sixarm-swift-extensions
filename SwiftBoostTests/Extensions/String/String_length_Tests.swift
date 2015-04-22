import UIKit
import XCTest

class String_length_Tests: XCTestCase {

  func testContent() {
    XCTAssertEqual("abc".length, 3)
  }

  func testBlank() {
    XCTAssertEqual("".length, 0)
  }

}
