//
//  ViewController.swift
//  UIKitAppWithSwiftUI
//
//  Created by Juan Francisco Dorado Torres on 07/11/20.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
  @IBOutlet weak var dataTextField: UITextField!

  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  @IBAction func openSwiftUIViewWithCodeDidTap(_ sender: UIButton) {
    let profileView = UIHostingController(rootView: ProfileView())
    navigationController?.pushViewController(profileView, animated: true)
  }

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "toShowDataView" {
      if let hostingController = segue.destination as? ShowDataViewHostingViewController {
        hostingController.rootView = ShowDataView(dataTextField: dataTextField)
      }
    }
  }
}

