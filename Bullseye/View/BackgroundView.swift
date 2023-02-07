//
//  BackgroundView.swift
//  Bullseye
//
//  Created by Stephanie Michael on 2/7/23.
//

import SwiftUI

struct BackgroundView: View {
  
  @Binding var game: Game
  
  var body: some View {
    VStack{
      TopView(game: $game)
      Spacer()
      BottomView(game: $game)
    }
    .padding()
    .background(Color("Background Color")
      .edgesIgnoringSafeArea(.all))
  }
}

struct TopView: View {
  @Binding var game: Game
  
  var body: some View {
    HStack {
      RoundedImageViewStroked(systemName: "arrow.counterclockwise")
      Spacer()
      RoundedImageViewFilled(systemName: "list.dash")
    }
  }
}

struct NumberView: View {
  var title: String
  var text: String
  
  var body: some View {
    VStack(spacing: 5){
      LabelText(text: title.uppercased())
      RoundedRecTextView(text: text)
    }
  }
}

struct BottomView: View {
  @Binding var game: Game
  
  var body: some View {
    HStack {
      NumberView(title: "Score", text: String(game.score))
      Spacer()
      NumberView(title: "Round", text: String(game.currentRound))
    }
  }
}

struct BackgroundView_Previews: PreviewProvider {
  static var previews: some View {
    // creating a game instance for preview
    BackgroundView(game: .constant(Game()))
  }
}
