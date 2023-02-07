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
          Text("🎯🎯🎯 \nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO:")
              .bold()
              .kerning(2.0)
              .lineSpacing(4.0)
              .font(.footnote)
              .multilineTextAlignment(.center)
          Text(String(game.target))
              .kerning(-1.0)
              .font(.largeTitle)
              .fontWeight(.black)
          HStack{
              Text("1")
                  .bold()
            Slider(value: $sliderValue, in:1.0...100.0)
              Text("100")
                  .bold()
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
                  .background(Color.red)
                  .foregroundColor(.white)
                  .cornerRadius(21.0)
              }
          }
      .padding()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
