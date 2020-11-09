//
//  LayoutIntroduction.swift
//  UIKitAppWithSwiftUI
//
//  Created by Juan Francisco Dorado Torres on 08/11/20.
//

import SwiftUI

struct LayoutIntroduction: View {
  var body: some View {
    ZStack {
      // Back
      Color.pink
        .ignoresSafeArea()

      // Layer
      VStack {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        RoundedRectangle(cornerRadius: 25.0)
          .frame(width: 100.0, height: 100.0)
        RoundedRectangle(cornerRadius: 25.0)
          .frame(width: 100.0, height: 100.0)
        RoundedRectangle(cornerRadius: 25.0)
          .frame(width: 100.0, height: 100.0)
        Spacer()
        // Horizontal
        HStack {
          Spacer()
          RoundedRectangle(cornerRadius: 25.0)
            .frame(width: 100.0, height: 100.0)
          RoundedRectangle(cornerRadius: 25.0)
            .frame(width: 100.0, height: 100.0)
        }
      }

      // Front
    }
  }
}

struct LayoutIntroduction_Previews: PreviewProvider {
  static var previews: some View {
    LayoutIntroduction()
  }
}
