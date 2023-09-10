import SwiftUI

struct AnimationBasics: View {
    @State private var position = CGPoint.zero
    
    var body: some View {
        VStack {
            Circle()
                .foregroundColor(.blue)
                .frame(width: 50, height: 50)
                .position(position)
                .offset(x: 50, y: 50)
                .animation(.easeInOut(duration: 1)
                            .delay(1)
                            .repeatCount(10)
                            .speed(4),
                           value: position)
            
            Spacer()
            
            Button("Animate") {
                position = position == .zero ? CGPoint(x: 300, y: 500) : .zero
            }
            .padding()
        }
    }
}

struct AnimationBasics_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBasics()
    }
}
