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
        bankView.refresh.addTarget(self, action: #selector(didRefreshTapped), for: .touchUpInside)
    }
    
    @objc func didAddCustomersTapped() {
        bank.insertCustomersIntoQueue()
        
        while bank.lineOfCustomers.isEmpty == false {
        guard let customer = bank.lineOfCustomers.dequeue() else { return }
        self.bankView.waitingStackView.addArrangedSubview(CustomerView.init(customer: customer))
        }
    }
    
    func removeStacview(stackView: UIStackView) {
        for labels in stackView.subviews {
            labels.removeFromSuperview()
        }
    }
    
    @objc func didRefreshTapped() {
        removeStacview(stackView: bankView.waitingStackView)
        removeStacview(stackView: bankView.workStackView)
        bank.reset()
    }
}
