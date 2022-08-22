//
//  RockPaperScissorsTests.swift
//  RockPaperScissorsTests
//
//  Created by Víctor Manuel Puga Ruiz on 18/08/22.
//

@testable import RockPaperScissors
import XCTest

class RockPaperScissorsTests: XCTestCase {
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }

  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }

  func testExample() throws {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
  }

  func testPerformanceExample() throws {
    // This is an example of a performance test case.
    self.measure {
      // Put the code you want to measure the time of here.
    }
  }
}

// MARK: Game rules

extension RockPaperScissorsTests {
  func testGameRules1() {
    let move1 = GameMove.rock
    let move2 = GameMove.rock
    
    let result = Rules.evaluateWinner(move1, move2)
    
    XCTAssertEqual(result, .tie)
  }
  
  func testGameRules2() {
    let move1 = GameMove.paper
    let move2 = GameMove.rock
    
    let result = Rules.evaluateWinner(move1, move2)
    
    XCTAssertEqual(result, .one)
  }
  
  func testGameRules3() {
    let move1 = GameMove.rock
    let move2 = GameMove.paper
    
    let result = Rules.evaluateWinner(move1, move2)
    
    XCTAssertEqual(result, .two)
  }
}
