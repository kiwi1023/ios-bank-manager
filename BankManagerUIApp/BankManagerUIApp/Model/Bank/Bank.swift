//
//  Bank.swift
//  BankManagerUIApp
//
//  Created by Kiwi, Kay on 2022/07/07.
//

import Foundation

final class Bank {
    private var lineOfCustomers = BankManagerQueue<Customer>()
    private var numberOfCustomers: Int = 0
    private var banker = Banker()
    
    private func insertCustomersIntoQueue() {
        for element in (numberOfCustomers + 1)...(numberOfCustomers + 10) {
            let random = Int.random(in: 0...1)
            let customer = Customer(customerNumber: element, business: BankWorkType.allCases[random])
            lineOfCustomers.enqueue(data: customer)
            numberOfCustomers += 10
        }
    }
    
    private func orderBankerToWork() {
        let start = CFAbsoluteTimeGetCurrent()
        let group = DispatchGroup()
        group.enter()
        while !lineOfCustomers.isEmpty {
            guard let customer = lineOfCustomers.dequeue() else { return }
            if customer.business == .deposit {
                banker.handleDepositCustomers(customer: customer, group: group)
            } else {
                banker.handleLoanCustomers(customer: customer, group: group)
            }
        }
        group.leave()
        group.notify(queue: .global()) {
            let diff = CFAbsoluteTimeGetCurrent() - start
            print("업무가 마감되었습니다. 오늘 업무를 처리한 고객은 총 \(self.numberOfCustomers)명이며, 총 업무시간은 \(String(format: "%.2f", diff))초 입니다.")
        }
    }
    
    func reset() {
        numberOfCustomers = 0
        lineOfCustomers.clear()
    }
}

