// At Intuit, I was asked one time to build my own primitive version of NoficationCenter (f.k.a. NSNotificationCenter)


import Foundation

class JLNotificationCenter {
    
    static let shared = JLNotificationCenter()
    
    private var notifications = [String: (() -> Any?)]()
    
    func addObserver(name: String, event: @escaping (() -> Any?)) {
        self.notifications[name] = event
    }
    
    @discardableResult
    func post(name: String) -> Any? {
        if let function = self.notifications[name] {
            return function()
        } else {
            print(self.notifications.debugDescription)
        }
        return nil
    }
    
    func removeObserver(name: String) {
        self.notifications.removeValue(forKey: name)
    }
}

// MARK: - Test

let kNotificationHello = "hello"

func hello() {
   print("Hello from function hello()")
}



JLNotificationCenter.shared.addObserver(name: kNotificationHello, event: hello)

JLNotificationCenter.shared.post(name: kNotificationHello)
