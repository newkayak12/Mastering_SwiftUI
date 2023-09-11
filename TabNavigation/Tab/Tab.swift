import SwiftUI

struct Tab_Tutorials: View {
    @State private var selectedIndex = 0
    
    var body: some View {
        TabView(selection: $selectedIndex) {
            SymbolScene(name: "star", color: Color.red, selectedIndex: $selectedIndex)
                .tabItem {
                    Label("star", systemImage: "star")
                }
                .tag(0)
            
            SymbolScene(name: "heart", color: Color.green, selectedIndex: $selectedIndex)
                .tabItem {
                    Label("heart", systemImage: "heart")
                }
                .tag(1)
            
            SymbolScene(name: "play", color: Color.blue, selectedIndex: $selectedIndex)
                .tabItem {
                    Label("play", systemImage: "play")
                }
                .tag(2)
        }
        .onChange(of: selectedIndex) { newValue in
            print(newValue)
        }
        
    }
}

struct Tab_Tutorials_Previews: PreviewProvider {
    static var previews: some View {
        Tab_Tutorials()
    }
}
