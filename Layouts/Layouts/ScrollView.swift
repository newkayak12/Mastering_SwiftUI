

import SwiftUI

struct ScrollView_Tutorials: View {
    var body: some View {
        ScrollView([.horizontal, .vertical]) {
//            HStack {
//                EmojiView(emoji: "😀")
//                EmojiView(emoji: "😍")
//                EmojiView(emoji: "😎")
//
//                EmojiView(emoji: "🐶")
//                EmojiView(emoji: "🐱")
//                EmojiView(emoji: "🐯")
//
//                EmojiView(emoji: "🍎")
//                EmojiView(emoji: "🍌")
//                EmojiView(emoji: "🍓")
//            }
//            .frame(maxWidth: .infinity)
            
            BigPhotoView()
        }.ignoresSafeArea()
    }
}

struct ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView_Tutorials()
    }
}
