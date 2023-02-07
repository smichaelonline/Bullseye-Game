//
//  ContentView.swift
//  Bullseye
//
//  Created by Stephanie Michael on 2/2/23.
//

import SwiftUI

struct ContentView: View {
  
  // state variable that will be changes when user clicks on button to show alert
  @State private var alertIsvisible = false
  @State private var sliderValue = 50.0
  @State private var game = Game()

    
  var body: some View {
    ZStack {
      Color("Background Color")
        .edgesIgnoringSafeArea(.all)
      VStack {
        InstructionsView(game: $game)
        HStack{
          Text("1")
            .bold()
            .foregroundColor(Color("TextColor"))
          Slider(value: $sliderValue, in:1.0...100.0)
          Text("100")
            .bold()
            .foregroundColor(Color("TextColor"))
        } .padding()
        Button(action: {
          print("hello, swiftUI")
          alertIsvisible = true
        }) {
          Text("HIT ME")
            .bold()
            .font(.title3)
            .alert("Hello there!", isPresented: $alertIsvisible) {
              Button("Awesome!") { }
            } message: {
              let roundedValue = Int(sliderValue.rounded())
              Text("The slider's value is \(roundedValue). \n" + "You scored \(game.points(sliderValue: roundedValue)) points this round")
            }
            .padding(20.0)
            .background(
              ZStack {
                Color("Button Color")
                LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
              }
            )
            .foregroundColor(.white)
            .cornerRadius(21.0)
        }
      }
      .padding()
    }
  }
}

struct InstructionsView: View {
  
  @Binding var game: Game
  
  var body: some View {
    VStack {
      InstructionText(text: "🎯🎯🎯 \nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO:")
        .padding(.leading, 30.0)
        .padding(.trailing, 30.0)
      BigNumberText(text: String(game.target))
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
    ContentView()
      .previewInterfaceOrientation(.landscapeRight)
    ContentView()
      .preferredColorScheme(.dark)
    ContentView()
      .preferredColorScheme(.dark)
      .previewInterfaceOrientation(.landscapeRight)
  }
}
