import SwiftUI

class LongPress: ObservableObject {
    @Published var activated = false
    
    var gesture: some Gesture {
        LongPressGesture()
            .onChanged { _ in self.activated = false }
            .onEnded { _ in self.activated = true }
    }
}
