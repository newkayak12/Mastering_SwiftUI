import SwiftUI

struct Animation_Repeat: View {
    @State private var animating = false
    
    var body: some View {
        VStack {
            Image(systemName: "arrow.2.circlepath")
                .resizable()
                .foregroundColor(.blue)
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .rotationEffect(.degrees(animating ? 360 : 0))
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .onAppear {
            animating = true            
        }
    }
}

struct Animation_Repeat_Previews: PreviewProvider {
    static var previews: some View {
        Animation_Repeat()
    }
}
