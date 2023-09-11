import SwiftUI

struct MultipleColumnView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(Emoji.allCases, id: \.self) { emoji in
                    NavigationLink(emoji.rawValue) {
                        EmojiView(emoji: emoji.rawValue)
                    }
                }
            }
            .navigationTitle("Emoji")
            
            ZStack {
                Color.yellow
                Text("Secondary Scene")
                    .font(.largeTitle)
            }
            .ignoresSafeArea()
            
            
//            ZStack {
//                Color.green
//                Text("Third Scene")
//                    .font(.largeTitle)
//            }
//            .ignoresSafeArea()
            
        }
//        .navigationViewStyle(.stack)
        .toolbar {
            ToolbarItem(placement: .navigation) {
                Button {
                    #if os(macOS)
                    NSApp.keyWindow?.firstResponder?
                        .tryToPerform(#selector(NSSplitViewController.toggleSidebar(_:)), with: nil)
                    #endif
                } label: {
                    Label("ToggleSidebar", systemImage: "sidebar.left")
                }
            }
        }
    }
}

struct MultipleColumnView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MultipleColumnView()
            
            #if os(iOS)
            MultipleColumnView()
                .previewInterfaceOrientation(.landscapeLeft)
            #endif
        }
    }
}
