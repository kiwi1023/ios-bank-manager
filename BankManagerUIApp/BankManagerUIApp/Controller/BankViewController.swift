//
//  BankManagerUIApp - ViewController.swift
//  Created by Kiwi, Kay. 
//  Copyright © yagom academy. All rights reserved.
// 

import UIKit

class BankViewController: UIViewController {
    var bankView = BankView()
    var bank = Bank()
    
    override func loadView() {
        view = bankView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        bankView.addCustomers.addTarget(self, action: #selector(didAddCustomersTapped), for: .touchUpInside)
    }
    
    @objc func didAddCustomersTapped() {
        bank.insertCustomersIntoQueue()
        bank.orderBankerToWork()
    }
}
