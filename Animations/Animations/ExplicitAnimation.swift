import SwiftUI

struct ExplicitAnimation: View {
    @State private var position = CGPoint.zero
    
    var easeInOut: Animation {
        Animation.easeInOut
    }
    
    var body: some View {
        VStack {
            Circle()
                .foregroundColor(.blue)
                .frame(width: 50, height: 50)
                .position(position)
                .offset(x: 50, y: 50)
            
            Spacer()
            
            HStack {
                Button("Animate") {
                    withAnimation(.linear) {
                        position = position == .zero ? CGPoint(x: 300, y: 500) : .zero
                    }
                }
                .padding()
                
                Button("Update") {
                    position = position == .zero ? CGPoint(x: 300, y: 500) : .zero
                }
                .padding()
            }
        }
    }
}

struct ExplicitAnimation_Previews: PreviewProvider {
    static var previews: some View {
        ExplicitAnimation()
    }
}
