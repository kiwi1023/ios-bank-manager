//
//  CustomerView.swift
//  BankManagerUIApp
//
//  Created by Kiwon Song on 2022/07/07.
//

import UIKit

class CustomerView: UIView {
    
    let customer: Customer
    
    let customerLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = .preferredFont(forTextStyle: .title3)
        label.adjustsFontForContentSizeCategory = true
        return label
    }()
    
    init(customer: Customer) {
        self.customer = customer
        super.init(frame: .zero)
        setupData()
        customerLabelConfigure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupData() {
        customerLabel.text = "\(customer.customerNumber) - \(customer.business.name)"
        
        if customer.business == .loan {
            customerLabel.textColor = .purple
        }
    }
    
    func customerLabelConfigure() {
        customerLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(customerLabel)
        
        NSLayoutConstraint.activate([
            customerLabel.topAnchor.constraint(equalTo: self.topAnchor),
            customerLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            customerLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            customerLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor)
        ])
    }
}
