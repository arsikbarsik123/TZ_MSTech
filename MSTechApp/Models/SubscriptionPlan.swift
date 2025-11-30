import Foundation

enum Plan: String, CaseIterable, Identifiable {
    case monthly
    case yearly

    var id: String { rawValue }

    var title: String {
        switch self {
        case .monthly: return "Месяц"
        case .yearly:  return "Год"
        }
    }

    var titleDescription: String {
        switch self {
        case .monthly: return "Подписка на месяц"
        case .yearly:  return "Подписка на год со скидкой"
        }
    }
}
