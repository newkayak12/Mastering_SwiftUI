import SwiftUI

/**
 [docs](https://developer.apple.com/documentation/swiftui/environmentvalues)
 */
struct Environment_Tutorials: View {
    @Environment(\.colorScheme) var currentColorScheme
    @Environment(\.horizontalSizeClass) var isHorizontal
    
    var body: some View {
        List {
            HStack {
                Text("Color Scheme")
                
                Spacer()
                
                Text(currentColorScheme == .dark ? "DarkMode" : "LightMode")
                
            }
            .padding()
            
            HStack {
                Text("Horizontal Size Class")
                
                Spacer()
                
                Text(isHorizontal == .compact ? "Compact" : "regular")
            }
            .padding()
        }
    }
}

struct Environment_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Environment_Tutorials()
            Environment_Tutorials()
                .preferredColorScheme(.dark)
        }
    }
}
