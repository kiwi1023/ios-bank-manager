//
//  BankManagerQueue.swift
//  BankManagerUIApp
//
//  Created by Kiwi, Kay on 2022/07/07.
//

struct BankManagerQueue<T> {
    private var list = Linkedlist<T>()
    
    var isEmpty: Bool {
        return list.isEmpty
    }
    
    mutating func enqueue(data: T) {
        list.append(data: data)
    }
    
    mutating func dequeue() -> T? {
        list.removeFirst()
    }
    
    mutating func peek() -> T? {
        return list.peek
    }
    
    mutating func clear() {
        list.removeAll()
    }
}
