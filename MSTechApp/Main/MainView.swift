import SwiftUI

struct MainView: View {
    var body: some View {
        VStack(spacing: 16) {
            Text("Главный экран")
                .font(.largeTitle)
            Text("Здесь может быть список, картинка, что угодно.")
            Image(systemName: "cat.fill")
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
        }
        .padding()
    }
}
