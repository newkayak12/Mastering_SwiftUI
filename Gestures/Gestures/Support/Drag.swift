import SwiftUI

class Drag: ObservableObject {
    @Published var currentTranslation = CGSize.zero
    @Published var totalTranslation = CGSize.zero
    @Published var activated = false
    
    var gesture: some Gesture {
        DragGesture()
            .onChanged { value in
                self.currentTranslation = value.translation
                self.activated = true
            }
            .onEnded { value in
                self.activated = false
                self.currentTranslation = .zero
                self.totalTranslation.width += value.translation.width
                self.totalTranslation.height += value.translation.height
            }
    }
}

