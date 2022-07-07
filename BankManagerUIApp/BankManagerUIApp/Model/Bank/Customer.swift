//
//  Customer.swift
//  BankManagerUIApp
//
//  Created by Kiwi, Kay on 2022/07/07.
//

final class Customer {
    let customerNumber: Int
    let business: BankWorkType
    
    init (customerNumber: Int, business: BankWorkType) {
        self.customerNumber = customerNumber
        self.business = business
    }
}
