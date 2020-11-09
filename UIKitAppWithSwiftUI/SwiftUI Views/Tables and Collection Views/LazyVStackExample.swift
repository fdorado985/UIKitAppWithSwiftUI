//
//  LazyVStackExample.swift
//  UIKitAppWithSwiftUI
//
//  Created by Juan Francisco Dorado Torres on 09/11/20.
//

import SwiftUI

struct LazyVStackExample: View {
  var body: some View {
    ZStack {
      Color.pink
        .edgesIgnoringSafeArea(.all)

      ScrollView {
        LazyVStack {
          ForEach(0 ..< 50) { item in
            HStack {
              RoundedRectangle(cornerRadius: 5)
                .frame(width: 50, height: 50)
                .padding(.leading)
              Text("Row \(item)")
                .font(.title)
                .padding()

              Spacer()
            }

            Divider()
          }
        }
      }
    }
  }
}

struct LazyVStackExample_Previews: PreviewProvider {
  static var previews: some View {
    LazyVStackExample()
  }
}
