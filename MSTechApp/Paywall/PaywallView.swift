import SwiftUI

struct PaywallView: View {
    @State private var selectedPlan: Plan = .monthly
    let onPurchase: () -> Void
    
    var body: some View {
        VStack(spacing: 24) {
            Text("Выберите подписку")
                .font(.title)
            ForEach(Plan.allCases) { plan in
                let isSelected = (plan == selectedPlan)

                HStack {
                    VStack(alignment: .leading, spacing: 4) {
                        Text(plan.title)
                            .font(.headline)
                        Text(plan.titleDescription)
                            .font(.subheadline)
                    }
                    
                    Spacer()
                    
                    if selectedPlan == plan {
                        Image(systemName: "checkmark.circle.fill")
                    }
                }
                .padding()
                .frame(
                    maxWidth: .infinity,
                    alignment: .leading
                )
                .background {
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(isSelected ? Color.accentColor : Color.gray.opacity(0.4),
                                lineWidth: isSelected ? 2 : 1)
                }
                .contentShape(Rectangle())
                .onTapGesture {
                    selectedPlan = plan
                }
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(selectedPlan == plan ? Color.primary : Color.gray)
                )
            }
            
            Button("Continue") {
                onPurchase()
            }
            .padding(.top, 24)
        }
        .padding()
    }
}
