import SwiftUI

struct MSTechView: View {
    @StateObject private var msTechViewModel = MSTechViewModel()
    
    var body: some View {
        Group {
            if msTechViewModel.isSubscribed {
                MainView()
            } else if !msTechViewModel.didFinishOnboarding {
                OnboardingView {
                    msTechViewModel.completeOnboarding()
                }
            } else {
                PaywallView {
                    msTechViewModel.completedPurchase()
                }
            }
        }
    }
}

#Preview {
    MSTechView()
}
