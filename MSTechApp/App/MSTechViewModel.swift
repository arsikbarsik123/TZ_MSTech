import Foundation

final class MSTechViewModel: ObservableObject {
    @Published var isSubscribed: Bool
    @Published var didFinishOnboarding: Bool = false
    
    private let storage: SubscriptionStorageProtocol
    
    init(storage: SubscriptionStorageProtocol = SubscriptionStorage()) {
        self.storage = storage
        self.isSubscribed = storage.isSubscribed
    }
    
    func completeOnboarding() {
        didFinishOnboarding = true
    }
    
    func completedPurchase() {
        storage.isSubscribed = true
        isSubscribed = true
    }
}
