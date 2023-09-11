import SwiftUI

struct EmojiView: View {
    var emoji: String
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Text(emoji)
                .font(.system(size: 200))
                .toolbar {
                    Button {
                        dismiss()
                    } label: {
                        Text("Close")
                    }
            }
            
            NavigationLink("Show") {
                EmojiView(emoji: emoji)
            }
        }
    }
}

struct EmojiView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiView(emoji: Emoji.smile.rawValue)
    }
}
