//
//  VisualEffectView.swift
//  UIKitAppWithSwiftUI
//
//  Created by Juan Francisco Dorado Torres on 11/11/20.
//

import SwiftUI

struct VisualEffectViewRepresentable: UIViewRepresentable {
  var blurStyle = UIBlurEffect.Style.systemMaterial

  func makeUIView(context: Context) -> UIVisualEffectView {
    return UIVisualEffectView(effect: UIBlurEffect(style: blurStyle))
  }

  func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
    uiView.effect = UIBlurEffect(style: blurStyle)
  }
}

struct VisualEffectView: View {
  var body: some View {
    ZStack {
      Image("Utah")
      Text("Arches National Park")
        .fontWeight(.bold)
        .foregroundColor(Color.white)
        .padding()
        .background(VisualEffectViewRepresentable(blurStyle: .dark))
    }
  }
}

struct VisualEffectView_Previews: PreviewProvider {
  static var previews: some View {
    VisualEffectView()
  }
}
