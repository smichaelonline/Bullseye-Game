//
//  Game.swift
//  Bullseye
//
//  Created by Stephanie Michael on 2/2/23.
//

import Foundation

struct Game {
  // target number that is displayed to user to try to get on the slider
  var target: Int = Int.random(in: 1...100)
  var score: Int = 0
  var currentRound: Int = 1
  
  func points(sliderValue: Int) -> Int {
    100 - abs(sliderValue - target)
  }
}

