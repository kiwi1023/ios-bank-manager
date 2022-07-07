//
//  BankManagerUIApp - ViewController.swift
//  Created by Kiwi, Kay. 
//  Copyright © yagom academy. All rights reserved.
// 

import UIKit

class BankViewController: UIViewController {
    var bankView = BankView()
    
    override func loadView() {
        view = bankView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }

}
