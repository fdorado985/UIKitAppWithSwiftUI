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
      VStack(alignment: .leading) {
        Text("Jane Cooper")
          .font(.title)
          .fontWeight(.bold)
        Text("Project Manager")
          .font(.title3)
        Text("My Tasks")
          .font(.title)
          .fontWeight(.bold)
        Text("To do")
          .fontWeight(.bold)
        Text("In Progress")
          .fontWeight(.bold)
        Text("Done")
          .fontWeight(.bold)
        VStack(alignment: .leading) {
          Text("Recently Assigned")
            .font(.title)
            .fontWeight(.bold)
          Text("Mobile App")
            .fontWeight(.bold)
          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sodales enim diam, nec lobortis tortor finibus at.")
          Text("12 Oct 2020")
        }
      }
    }
  }
}

struct ComplexUIView_Previews: PreviewProvider {
  static var previews: some View {
    ComplexUIView()
  }
}
