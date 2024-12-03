import XCTest

@testable import AdventOfCode

// Make a copy of this file for every day to ensure the provided smoke tests
// pass.
final class Day02Tests: XCTestCase {
  // Smoke test data provided in the challenge question
  let testData = """
    1 3 6 7 9
    5 0 3 2 1
    4 2 8 4 5
    8 4 3 2 4
    4 0 2 1 0
    0 5 1 2 3
    0 1 6 2 3
    7 6 4 2 1
    3 5 2 6 7
    3 5 2 6 9
    1 2 7 8 9
    9 7 6 2 1
    1 3 2 4 5
    8 6 4 4 1
    5 0 1 2 3
    0 1 6 2 3
    4 8 4 2 0
    0 1 6 2 3
    """

  func testPart1() throws {
    let challenge = Day02(data: testData)
    XCTAssertEqual(String(describing: challenge.part1()), "2")
  }

  func testPart2() throws {
    let challenge = Day02(data: testData)
    XCTAssertEqual(String(describing: challenge.part2()), "4")
  }
}


//4 0 2 1 0
//0 5 1 2 3
//0 1 6 2 3
//7 6 4 2 1
//3 5 2 6 7
//3 5 2 6 9
//1 2 7 8 9
//9 7 6 2 1
//1 3 2 4 5
//8 6 4 4 1
//1 3 6 7 9
//5 0 1 2 3
//0 1 6 2 3
//4 8 4 2 0
//0 1 6 2 3
