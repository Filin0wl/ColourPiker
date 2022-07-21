//
//  StartViewController.swift
//  ColourPiker
//
//  Created by Anastasia Perminova on 21.07.2022.
//

import UIKit

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .yellow
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .compose, target: self, action: #selector(editTapped))
    }

    @objc func editTapped() {
        //open edit page
        print("tapped")
    }

    

}
