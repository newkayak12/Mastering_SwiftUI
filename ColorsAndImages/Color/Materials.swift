
import SwiftUI

struct Materials: View {
    var body: some View {
        ZStack {
            Image("big-photo")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack(spacing: 50) {
                Text("Lorem Ipsum")
                    .frame(maxWidth: .infinity)
                    .frame(height: 80)
                    .background(.ultraThinMaterial)
                    
                    
                Text("Lorem Ipsum")
                    .frame(maxWidth: .infinity)
                    .frame(height: 80)
                    .background(.thinMaterial)
                    
                
                Text("Lorem Ipsum")
                    .frame(maxWidth: .infinity)
                    .frame(height: 80)
                    .background(.regularMaterial)
                
                    
                Text("Lorem Ipsum")
                    .frame(maxWidth: .infinity)
                    .frame(height: 80)
                    .background(.thickMaterial)
                
                
                Text("Lorem Ipsum")
                    .frame(maxWidth: .infinity)
                    .frame(height: 80)
                    .background(.ultraThickMaterial)
                
            }
            .font(.largeTitle)
        }
    }
}

struct Materials_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Materials()
            Materials()
                .preferredColorScheme(.dark)
        }
            
    }
}
