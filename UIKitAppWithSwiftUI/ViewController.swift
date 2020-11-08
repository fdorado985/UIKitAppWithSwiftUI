//
//  ViewController.swift
//  UIKitAppWithSwiftUI
//
//  Created by Juan Francisco Dorado Torres on 07/11/20.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
  // MARK: - Outlets

  @IBOutlet weak var dataTextField: UITextField!

  // MARK: - View Lifecycle

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  // MARK: - Actions

  @IBAction func openSwiftUIViewWithCodeDidTap(_ sender: UIButton) {
    let profileView = UIHostingController(rootView: ProfileView())
    navigationController?.pushViewController(profileView, animated: true)
  }

  @IBAction func passDataInSwiftUIWithCode(_ sender: UIButton) {
    let view = ShowDataViewWithCode(dataPassedIn: dataTextField.text ?? "")
    let dataView = UIHostingController(rootView: view)
    navigationController?.pushViewController(dataView, animated: true)
  }

  // MARK: - Navigation

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "toShowDataView" {
      if let hostingController = segue.destination as? ShowDataViewHostingViewController {
        hostingController.rootView = ShowDataView(dataTextField: dataTextField)
      }
    }
  }
}

