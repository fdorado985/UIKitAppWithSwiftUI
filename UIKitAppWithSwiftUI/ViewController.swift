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
  @IBOutlet weak var nameLabel: UILabel!

  // MARK: - View Lifecycle

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  // MARK: - Actions

  @IBAction func openSwiftUIViewWithCodeDidTap(_ sender: UIButton) {
    let profileView = UIHostingController(rootView: ProfileView())
    navigationController?.pushViewController(profileView, animated: true)
  }

  @IBAction func passDataInSwiftUIWithCodeDidTap(_ sender: UIButton) {
    let view = ShowDataViewWithCode(dataPassedIn: dataTextField.text ?? "")
    let dataView = UIHostingController(rootView: view)
    navigationController?.pushViewController(dataView, animated: true)
  }

  @IBAction func enterNameButtonDidTap(_ sender: UIButton) {
    let view = SendDataBackToUIKit { [weak self] name in
      self?.nameLabel.text = name
    }

    let nameView = UIHostingController(rootView: view)
    navigationController?.pushViewController(nameView, animated: true)
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
