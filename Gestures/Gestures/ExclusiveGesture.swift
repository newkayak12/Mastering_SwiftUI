import SwiftUI

struct ExclusiveGesture_Tutorials: View {
    @ObservedObject var rotation = Rotation()
    @ObservedObject var magnification = Magnification()
    @State private var currentGestureType = GestureType.rotation
    
    var gestures: some Gesture {
//        if currentGestureType == .rotation {
//            return  ExclusiveGesture(rotation.gesture, magnification.gesture)
//        } else {
//            return  ExclusiveGesture(magnification.gesture, rotation.gesture)
//        }
        //Generic  문제 있음
        
            ExclusiveGesture(rotation.gesture, magnification.gesture)
    }
    
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
//                        .gesture(gestures)
                        .gesture(rotation.gesture.exclusively(before: magnification.gesture))
                } else {
                    logo
                        .rotationEffect(rotation.finalAngle)
                        .scaleEffect(magnification.finalScale)
                        .gesture(magnification.gesture.exclusively(before: rotation.gesture))
                }
                
//                logo
//                    .rotationEffect(rotation.finalAngle)
//                    .scaleEffect(magnification.finalScale)
//                    .gesture(
//                        currentGestureType == .rotation ?
//                        rotation.gesture.exclusively(before: rotation.gesture):
//                        magnification.gesture.exclusively(before: rotation.gesture)
//                    )
                        /**
                         Result values in '? :' expression have mismatching types 'SwiftUI.ExclusiveGesture<some SwiftUI.Gesture, some SwiftUI.Gesture>' and 'SwiftUI.ExclusiveGesture<some SwiftUI.Gesture, some SwiftUI.Gesture>'
                         */

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
