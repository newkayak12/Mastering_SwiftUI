import SwiftUI

class Rotation: ObservableObject {
    var latestAngle: Angle = .degrees(0)
    @Published var finalAngle: Angle = .degrees(0)
    
    var gesture: some Gesture {
        RotationGesture()
            .onChanged { value in
                let delta = value - self.latestAngle
                self.latestAngle = value
                
                self.finalAngle = self.finalAngle + delta
            }
            .onEnded { value in
                self.latestAngle = .degrees(0)
            }
    }
}
