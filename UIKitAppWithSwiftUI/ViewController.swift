//
//  ViewController.swift
//  UIKitAppWithSwiftUI
//
//  Created by Juan Francisco Dorado Torres on 07/11/20.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  @IBAction func openSwiftUIViewWithCodeDidTap(_ sender: UIButton) {
    let profileView = UIHostingController(rootView: ProfileView())
    navigationController?.pushViewController(profileView, animated: true)
  }
}

