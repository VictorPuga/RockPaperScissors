//
//  RulesTests.swift
//  RockPaperScissorsTests
//
//  Created by Víctor Manuel Puga Ruiz on 22/08/22.
//

@testable import RockPaperScissors
import XCTest

class RulesTests: XCTestCase {
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
