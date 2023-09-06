
import SwiftUI

struct ColorData: Identifiable {
    var id: String {
        return title
    }
    let title: String
    let color: Color
    
    static let samples = [
        ColorData(title: "Red", color: .red),
        ColorData(title: "Green", color: .green),
        ColorData(title: "Blue", color: .blue),
        ColorData(title: "Yellow", color: .yellow),
        ColorData(title: "Pink", color: .pink)
    ]
}
