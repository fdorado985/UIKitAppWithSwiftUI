//
//  ShowDataView.swift
//  UIKitAppWithSwiftUI
//
//  Created by Juan Francisco Dorado Torres on 07/11/20.
//

import SwiftUI

struct ShowDataView: View {
  var dataTextField: UITextField?

  var body: some View {
    VStack {
      Text("Here is the data passed in:")
      Text(dataTextField?.text ?? "")
    }
  }
}

struct ShowDataView_Previews: PreviewProvider {
  static var previews: some View {
    ShowDataView()
  }
}
