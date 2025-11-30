import SwiftUI

struct OnboardingView: View {
    let onFinish: () -> Void
    
    var body: some View {
        VStack {
            Text("Добро пожаловать!")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            Text("Короткий текст про то, как ваше супер-приложение изменит жизнь.")
                .multilineTextAlignment(.center)
            
            Button("Продолжить") {
                onFinish()
            }
            .padding()
        }
        .padding()
    }
}
