import XCTest

import resizedTests

var tests = [XCTestCaseEntry]()
tests += resizedTests.allTests()
XCTMain(tests)
