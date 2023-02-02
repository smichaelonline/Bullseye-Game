//
//  ContentView.swift
//  Bullseye
//
//  Created by Stephanie Michael on 2/2/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("🎯🎯🎯 \nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO:")
                .bold()
                .kerning(2.0)
                .lineSpacing(4.0)
                .font(.footnote)
                .multilineTextAlignment(.center)
            Text("89")
            HStack{
                Text("1")
                Slider(value: .constant(50), in:1.0...100.0)
                Text("100")
            }
            Button(action: {}) {
                Text("Hit Me")
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
