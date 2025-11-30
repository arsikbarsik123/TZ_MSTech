import Foundation

protocol SubscriptionStorageProtocol: AnyObject {
    var isSubscribed: Bool { get set }
}

final class SubscriptionStorage: SubscriptionStorageProtocol {
    private let key = "isSubscribed"
    private let defaults = UserDefaults.standard
    
    var isSubscribed: Bool {
        get { defaults.bool(forKey: key) }
        set { defaults.set(newValue, forKey: key) }
    }
}
