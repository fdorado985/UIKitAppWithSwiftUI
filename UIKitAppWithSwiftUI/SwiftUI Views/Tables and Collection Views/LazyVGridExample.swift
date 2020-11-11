//
//  LazyVGridExample.swift
//  UIKitAppWithSwiftUI
//
//  Created by Juan Francisco Dorado Torres on 10/11/20.
//

import SwiftUI

struct LazyVGridExample: View {
  var body: some View {
    ScrollView {
      LazyVGrid(
        columns: [
          GridItem(.adaptive(minimum: 100, maximum: 200))
        ]
      ) {
        ForEach(0 ..< 50) { item in
          VStack {
            Circle()
              .frame(width: 50, height: 50)
            Text("Grid Item")
          }
          .padding()
          .frame(maxWidth: .infinity)
          .background(
            RoundedRectangle(cornerRadius: 10)
              .fill(Color.yellow)
          )
          .frame(height: 120)
        }
      }
    }
  }
}

struct LazyVGridExample_Previews: PreviewProvider {
  static var previews: some View {
    LazyVGridExample()
  }
}
