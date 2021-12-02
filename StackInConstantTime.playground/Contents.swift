/* Design a stack (LIFO) data structure that does push, pop, and peek in O(1) = Constant time. This solution can accept multiple object types */

import Foundation

class Stack {
    
    // Key is the index
    var storage : [Int: Any] = [Int: Any]()
    
    public init() {
        
    }
    
    public func push(value : Any) {
        storage[storage.count] = value
    }
    
    public func pop() -> Any? {
        if let value = storage[storage.count] {
            storage.removeValue(forKey: storage.count)
            return value
        }
        else {
            return nil
        }
    }
    
    public func peek() -> Any? {
        if let value = storage[storage.count] {
            return value
        }
        else {
            return nil
        }
    }
}

var stack = Stack()







