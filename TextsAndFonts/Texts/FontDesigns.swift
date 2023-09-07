
import SwiftUI

struct FontDesigns: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("Default")
                .font(.largeTitle)
            
            Text("Monospaced")
                .font(.system(.largeTitle, design: .monospaced))
            
            Text("Rounded")
                .font(.system(.largeTitle, design: .rounded))
            
            Text("Serif")
                .font(.system(.largeTitle, design: .serif))
            
        }
    }
}

struct FontDesigns_Previews: PreviewProvider {
    static var previews: some View {
        FontDesigns()
    }
}
