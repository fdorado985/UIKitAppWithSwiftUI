//
//  SafariSwiftUIView.swift
//  UIKitAppWithSwiftUI
//
//  Created by Juan Francisco Dorado Torres on 11/11/20.
//

import SwiftUI
import SafariServices

struct SafariViewControllerRepresentable: UIViewControllerRepresentable {
  let url: URL
  func makeUIViewController(context: Context) -> SFSafariViewController {
    return SFSafariViewController(url: url)
  }

  func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {
    // do nothing
  }


}

struct SafariSwiftUIView: View {
  var body: some View {
    SafariViewControllerRepresentable(url: URL(string: "https://www.swiftyjourney.com")!)
      .ignoresSafeArea(edges: .vertical)
  }
}

struct SafariSwiftUIView_Previews: PreviewProvider {
  static var previews: some View {
    SafariSwiftUIView()
  }
}
