import SwiftUI

class Magnification: ObservableObject {
    private var latestScale: CGFloat = 1.0
    @Published var finalScale: CGFloat = 1.0
    
    var gesture: some Gesture {
        MagnificationGesture()
            .onChanged { value in
                let delta = value / self.latestScale
                self.latestScale = value
                
                self.finalScale *= delta
            }
            .onEnded { value in
                self.latestScale = 1.0
            }
    }
}


