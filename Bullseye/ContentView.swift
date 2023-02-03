//
//  ContentView.swift
//  Bullseye
//
//  Created by Stephanie Michael on 2/2/23.
//

import SwiftUI

struct ContentView: View {
    
  @State private var alertIsvisible: Bool = false
  @State private var sliderValue: Double = 50.0
    
  var body: some View {
      VStack {
        Text("🎯🎯🎯 \nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO:")
            .bold()
            .kerning(2.0)
            .lineSpacing(4.0)
            .font(.footnote)
            .multilineTextAlignment(.center)
        Text("89")
            .kerning(-1.0)
            .font(.largeTitle)
            .fontWeight(.black)
        HStack{
            Text("1")
                .bold()
          Slider(value: self.$sliderValue, in:1.0...100.0)
            Text("100")
                .bold()
        }
        Button(action: {
            print("hello, swiftUI")
            self.alertIsvisible = true
        }) {
            Text("Hit Me")
                .alert("Hello there!", isPresented: $alertIsvisible) {
                    Button("Awesome!") { }
                } message: {
                    Text("This is my first pop-up")
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
