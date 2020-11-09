//
//  ComplexUIView.swift
//  UIKitAppWithSwiftUI
//
//  Created by Juan Francisco Dorado Torres on 08/11/20.
//

import SwiftUI

struct ComplexUIView: View {
  var body: some View {
    ZStack {
      // Back layer
      Color(#colorLiteral(red: 0.9788002372, green: 0.9369693398, blue: 0.8757455945, alpha: 1))
        .ignoresSafeArea()

      // Layer on Top
      VStack {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
      }
    }
  }
}

struct ComplexUIView_Previews: PreviewProvider {
  static var previews: some View {
    ComplexUIView()
  }
}
