//
//  ShowDataViewWithCode.swift
//  UIKitAppWithSwiftUI
//
//  Created by Juan Francisco Dorado Torres on 07/11/20.
//

import SwiftUI

struct ShowDataViewWithCode: View {
  var dataPassedIn: String = "no data passed in"

  var body: some View {
    VStack {
      Text("Here is the data you passed in:")
      Text(dataPassedIn)
        .fontWeight(.bold)
    }
    .navigationTitle("Show Data with Code")
  }
}

struct ShowDataViewWithCode_Previews: PreviewProvider {
  static var previews: some View {
    ShowDataViewWithCode()
  }
}
