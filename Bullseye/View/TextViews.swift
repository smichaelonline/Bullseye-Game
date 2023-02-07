//
//  TextViews.swift
//  Bullseye
//
//  Created by Stephanie Michael on 2/6/23.
//

import SwiftUI

struct InstructionText: View {
  var text: String
  
  var body: some View {
    Text(text)
      .bold()
      .kerning(2.0)
      .lineSpacing(4.0)
      .font(.footnote)
      .multilineTextAlignment(.center)
      .foregroundColor(Color("TextColor"))
  }
}

struct BigNumberText: View {
  var text: String
  
  var body: some View {
    Text(text)
      .kerning(-1.0)
      .font(.largeTitle)
      .fontWeight(.black)
      .foregroundColor(Color("TextColor"))
  }
}

struct SliderLabelText: View {
  var text: String
  
  var body: some View {
    Text(text)
      .bold()
      .foregroundColor(Color("TextColor"))
  }
}

struct TextViews_Previews: PreviewProvider {
  static var previews: some View {
    VStack {
      InstructionText(text: "Instructions")
      BigNumberText(text: "999")
      SliderLabelText(text: "1")
    }
  }
}
