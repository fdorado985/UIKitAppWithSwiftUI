//
//  ComplexUIView.swift
//  UIKitAppWithSwiftUI
//
//  Created by Juan Francisco Dorado Torres on 08/11/20.
//

import SwiftUI

struct ComplexUIView: View {
  @State private var searchText = ""

  var body: some View {
    ZStack {
      // Back layer
      Color(#colorLiteral(red: 0.9788002372, green: 0.9369693398, blue: 0.8757455945, alpha: 1))
        .ignoresSafeArea()

      // Layer on Top
      VStack(alignment: .leading, spacing: 20.0) {
        HStack {
          VStack(alignment: .leading) {
            Text("Jane Cooper")
              .font(.title)
              .fontWeight(.bold)
            Text("Project Manager")
              .font(.title3)
          }
          Spacer()
          RoundedRectangle(cornerRadius: 5)
            .frame(width: 50.0, height: 50.0)
        }
        TextField("Search", text: $searchText)
          .padding()
          .background(
            Capsule()
              .fill(Color.white)
          )
          .overlay(
            Image(systemName: "magnifyingglass")
              .foregroundColor(.gray)
              .padding(),
            alignment: .trailing
          )

        Text("My Tasks")
          .font(.title)
          .fontWeight(.bold)
        HStack {
          RoundedRectangle(cornerRadius: 5)
            .frame(width: 50.0, height: 50.0)
          Text("To do")
            .fontWeight(.bold)
          Spacer()
          Text("5 tasks")
        }
        HStack {
          RoundedRectangle(cornerRadius: 5)
            .frame(width: 50.0, height: 50.0)
          Text("In Progress")
            .fontWeight(.bold)
          Spacer()
          Text("6 tasks")
        }
        HStack {
          RoundedRectangle(cornerRadius: 5)
            .frame(width: 50.0, height: 50.0)
          Text("Done")
            .fontWeight(.bold)
          Spacer()
          Text("25 tasks")
        }

        VStack(alignment: .leading, spacing: 40.0) {
          HStack {
            Text("Recently Assigned")
              .font(.title2)
              .fontWeight(.bold)
            Spacer()
            Text("All Tasks")
              .font(.footnote)
          }
          VStack(alignment: .leading, spacing: 20.0) {
            Text("Mobile App")
              .fontWeight(.bold)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sodales enim diam, nec lobortis.")
            Text("12 Oct 2020")
          }
          .padding()
          .background(
            RoundedRectangle(cornerRadius: 25.0)
              .fill(Color.white)
              .shadow(
                color: .gray,
                radius: 5,
                x: 4.0,
                y: 4.0
              )
          )
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(
          RoundedRectangle(cornerRadius: 25.0)
            .fill(Color.white)
        )
      }
      .padding()
    }
  }
}

struct ComplexUIView_Previews: PreviewProvider {
  static var previews: some View {
    ComplexUIView()
  }
}
