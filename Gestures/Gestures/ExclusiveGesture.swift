import SwiftUI

struct ExclusiveGesture_Tutorials: View {
    @ObservedObject var rotation = Rotation()
    @ObservedObject var magnification = Magnification()
    @State private var currentGestureType = GestureType.rotation
    
    var logo: some View {
        Image("swiftui-logo")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200)
    }
    
    var body: some View {
        VStack {
            VStack {
                if currentGestureType == .rotation {
                    logo
                        .rotationEffect(rotation.finalAngle)
                        .scaleEffect(magnification.finalScale)
                } else {
                    logo
                        .rotationEffect(rotation.finalAngle)
                        .scaleEffect(magnification.finalScale)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            ExclusiveGestureMenu(currentGestureType: $currentGestureType)
        }
    }
}

struct ExclusiveGesture_Previews: PreviewProvider {
    static var previews: some View {
        ExclusiveGesture_Tutorials()
    }
}
