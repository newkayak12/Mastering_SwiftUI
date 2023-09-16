import SwiftUI

struct RotationGesture_Tutorials: View {
    
    @State private var finalAngle: Angle = .degrees(0)
    @State private var latestAngle: Angle = .degrees(0)
    var rotate: some Gesture {
        RotationGesture()
            .onChanged { angle in
                
                let delta = angle - latestAngle
                latestAngle = angle
                
                finalAngle += delta
                
                
            }
            .onEnded { value in
                latestAngle = .degrees(0)
            }
    }
    
    var body: some View {
        Image("swiftui-logo")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200)
            .rotationEffect(finalAngle)
            .gesture(rotate)
    }
}

struct RotationGesture_Previews: PreviewProvider {
    static var previews: some View {
        RotationGesture_Tutorials()
    }
}
