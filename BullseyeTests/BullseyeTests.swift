//
//  BullseyeTests.swift
//  BullseyeTests
//
//  Created by Stephanie Michael on 2/3/23.
//

import XCTest
@testable import Bullseye

final class BullseyeTests: XCTestCase {
  
  var game: Game!
  
  override func setUpWithError() throws {
    game = Game()
  }
  
  override func tearDownWithError() throws {
    game = nil
  }
  
  func testScorePositive() {
    // tests to see if guess is within 5 from target number
    let guess = game.target + 5
    let score = game.points(sliderValue: guess)
    XCTAssertEqual(score, 95)
  }
  
  func testScoreNegative() {
    // tests to see if guess is within 5 from target number
    let guess = game.target - 5
    let score = game.points(sliderValue: guess)
    XCTAssertEqual(score, 95)
  }
  
}
