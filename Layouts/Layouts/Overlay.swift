
import SwiftUI

struct Overlay: View {
    @State var selected = false
    
    var body: some View {
        EmojiView(emoji: "😎")
//            .overlay(.ultraThinMaterial, in: Circle())
//            .overlay {
//                Image("big-photo")
//                .resizable()
//            }
            .overlay(alignment: .bottomTrailing) {
                
                if selected {
                    Image(systemName: "checkmark.circle.fill")
                    .foregroundColor(.blue)
                    .font(.largeTitle)
                }
                
            }
            .onTapGesture {
                selected.toggle()
            }
    }
}

struct Overlay_Previews: PreviewProvider {
    static var previews: some View {
        Overlay()
    }
}
