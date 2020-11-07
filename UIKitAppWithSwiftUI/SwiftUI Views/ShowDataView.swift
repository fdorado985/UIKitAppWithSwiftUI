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
      Text(dataTextField?.text ?? "no data passed in")
        .fontWeight(.bold)
    }
  }
}

struct ShowDataView_Previews: PreviewProvider {
  static var previews: some View {
    ShowDataView()
  }
}

class ShowDataViewHostingViewController: UIHostingController<ShowDataView> {
  required init?(coder aDecoder: NSCoder) {
    super.init(rootView: ShowDataView())
  }
}
