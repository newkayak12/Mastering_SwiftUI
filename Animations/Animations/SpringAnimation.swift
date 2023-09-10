import SwiftUI

struct SpringAnimation: View {
    @State private var position = CGPoint.zero
    
    var body: some View {
        VStack {
            Circle()
                .foregroundColor(.blue)
                .frame(width: 50, height: 50)
                .position(position)
                .offset(x: 50, y: 50)
//                .animation(.spring(response: 0.3, dampingFraction: 0.01, blendDuration: 0), value: position)
                .animation(.interpolatingSpring(mass: 1, stiffness: 1, damping: 0.1, initialVelocity: 1), value: position)
            
            Spacer()
            
            Button("Animate") {
                position = position == .zero ? CGPoint(x: 300, y: 500) : .zero
            }
            .padding()
        }
    }
}

struct SpringAnimation_Previews: PreviewProvider {
    static var previews: some View {
        SpringAnimation()
    }
}
