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
      BackgroundView(game: $game)
      VStack {
        // views are referenced below
        InstructionsView(game: $game)
        SliderView(sliderValue: $sliderValue)
        HitMeButton(alertIsvisible: $alertIsvisible, sliderValue: $sliderValue, game: $game)
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

struct SliderView: View {
  
  @Binding var sliderValue: Double

  var body: some View {
    HStack{
      SliderLabelText(text: "1")
      Slider(value: $sliderValue, in:1.0...100.0)
      SliderLabelText(text: "100")
    } .padding()
  }
}

struct HitMeButton: View {
  
  @Binding var alertIsvisible: Bool
  @Binding var sliderValue: Double
  @Binding var game: Game
  
  var body: some View {
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
        .overlay(
          RoundedRectangle(cornerRadius: 21.0)
            .strokeBorder(Color.white, lineWidth: 2.0)
        )
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
