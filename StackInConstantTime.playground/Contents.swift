/* Design a stack (LIFO) data structure that does push, pop, and peek in O(1) = Constant time. This solution can accept multiple object types */

import Foundation

class MyStack {
    
    // Key is the index
    private var storage : [Int: Any] = [Int: Any]()
    
    public func push(value : Any) {
        storage[storage.count] = value
    }
    
    public func pop() -> Any? {
        if let value = storage[storage.count - 1] {
            storage.removeValue(forKey: storage.count - 1)
            return value
        }
        return nil
    }
    
    public func peek() -> Any? {
        if let value = storage[storage.count - 1] {
            return value
        }
        return nil
    }
    
    public func printContents() {
        print("Stack contents: \n" + storage.description)
    }
}

// Tests

var stack = MyStack()

stack.push(value: 10)
stack.push(value: 5)

stack.printContents()

stack.pop()

stack.printContents()

stack.pop()

stack.printContents()

stack.push(value: 1)
stack.push(value: 2)
stack.push(value: 5)

stack.printContents()

stack.pop()

stack.printContents()

var topmostValue = stack.peek()














