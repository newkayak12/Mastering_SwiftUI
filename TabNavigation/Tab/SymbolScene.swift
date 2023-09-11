import SwiftUI

struct SymbolScene: View {
    var name: String
    var color: Color
    @Binding var selectedIndex: Int
    
    
    var body: some View {
        VStack {
            Spacer()
            
            Image(systemName: name)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .foregroundColor(color)
            
            Button {
                if selectedIndex == 2 {
                    selectedIndex = 0
                } else {
                    selectedIndex += 1
                }
            } label: {
                Text("Next")
            }
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct SymbolScene_Previews: PreviewProvider {
    static var previews: some View {
        SymbolScene(name: "circle", color: Color.red, selectedIndex: .constant(0))
    }
}
