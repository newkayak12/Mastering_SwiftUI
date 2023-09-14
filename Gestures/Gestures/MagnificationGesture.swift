import SwiftUI

struct MagnificationGesture_Tutorials: View {
    
    @State private var finalScale: CGFloat = 1.0
    @State private var latestScale: CGFloat = 1.0
    
    var magnification: some Gesture {
        MagnificationGesture()
            .onChanged { scale in
                
                let delta = scale / latestScale
                latestScale = scale
                finalScale *= delta
                
            }
            .onEnded { value in
                latestScale = 1.0
            }
    }
    
    var body: some View {
        Image("swiftui-logo")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200)
            .scaleEffect(finalScale)
            .gesture(magnification)
        
            
    }
}

struct MagnificationGesture_Previews: PreviewProvider {
    static var previews: some View {
        MagnificationGesture_Tutorials()
    }
}
