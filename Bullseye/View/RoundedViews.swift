//
//  RoundedViews.swift
//  Bullseye
//
//  Created by Stephanie Michael on 2/6/23.
//

import SwiftUI

struct RoundedImageViewStroked: View {
  var systemName: String
  
  var body: some View {
    ZStack {
      Circle()
        .stroke(Color("ButtonStrokeColor"), lineWidth: 2)
        .frame(width: 56.0, height: 56.0)
      Image(systemName: systemName)
        .font(.title)
        .foregroundColor(Color("TextColor"))
        .frame(width: 56.0, height: 56.0)
    }
  }
}

struct RoundedImageViewFilled: View {
  var systemName: String
  
  var body: some View {
    ZStack {
      Circle()
        .fill(Color("ButtonFilledBackgroundColor"))
        .frame(width: 56.0, height: 56.0)
      Image(systemName: systemName)
        .font(.title)
        .foregroundColor(Color("ButtonFilledTextColor"))
        .frame(width: 56.0, height: 56.0)
    }
  }
}

struct PreviewView: View {
  var body: some View {
    VStack {
      RoundedImageViewStroked(systemName: "arrow.counterclockwise")
      RoundedImageViewFilled(systemName: "list.dash")
    }
  }
}

struct RoundedViews_Previews: PreviewProvider {
  static var previews: some View {
    PreviewView()
    PreviewView()
      .preferredColorScheme(.dark)
  }
}
