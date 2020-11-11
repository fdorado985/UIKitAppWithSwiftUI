//
//  SendDataBackToUIKit.swift
//  UIKitAppWithSwiftUI
//
//  Created by Juan Francisco Dorado Torres on 08/11/20.
//

import SwiftUI

struct SendDataBackToUIKit: View {
  var sendNameBack: ((String) -> Void)?
  @State private var name: String = ""

  var body: some View {
    VStack {
      Text("Enter name:")
      TextField("Name", text: $name)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .padding()
      Button(
        action: {
          guard let sendNameBack = sendNameBack else { return }
          sendNameBack(name)
        },
        label: {
          Text("Update name")
        }
      )
    }
    .padding(16.0)
  }
}

struct SendDataBackToUIKit_Previews: PreviewProvider {
  static var previews: some View {
    SendDataBackToUIKit()
  }
}
