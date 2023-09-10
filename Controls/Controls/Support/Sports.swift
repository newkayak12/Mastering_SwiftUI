import Foundation

enum Sports: String, CaseIterable, Identifiable {
    case soccer = "⚽️"
    case basketball = "🏀"
    case baseball = "⚾️"
    
    var id: Self { self }
}
