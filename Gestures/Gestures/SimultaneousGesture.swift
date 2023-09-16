import SwiftUI

struct SimultaneousGesture_Tutorials: View {
    
    @ObservedObject var rotation = Rotation()
    @ObservedObject var magnification = Magnification()
    
    private var simultaneousGesture: some Gesture {
        rotation.gesture.simultaneously(with: magnification.gesture)
    }
    
    var body: some View {
        VStack {
            Image("swiftui-logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .rotationEffect(rotation.finalAngle)
                .scaleEffect(magnification.finalScale)
                .gesture(simultaneousGesture)
//                .gesture(rotation.gesture.simultaneously(with: magnification.gesture))
//                .gesture(magnification.gesture)
            
        }
    }
}

struct SimultaneousGesture_Previews: PreviewProvider {
    static var previews: some View {
        SimultaneousGesture_Tutorials()
    }
}
