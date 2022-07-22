//
//  StartViewController.swift
//  ColourPiker
//
//  Created by Anastasia Perminova on 21.07.2022.
//

import UIKit

protocol StartViewControllerDelegate: AnyObject {
    func updateUi(setColor: UIColor)
}

class StartViewController: UIViewController, StartViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .yellow
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .compose, target: self, action: #selector(editTapped))
    }

    @objc func editTapped() {
        navigationController?.pushViewController(EditColourViewController(), animated: true)
        print("tapped")
    }

    func updateUi(setColor: UIColor) {
        self.view.backgroundColor = setColor
    }

}
