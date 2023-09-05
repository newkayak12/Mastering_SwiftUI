//
//  Sections.swift
//  Layouts
//
//  Created by KxCoding on 2022/02/13.
//

import SwiftUI

struct Sections: View {
    var body: some View {
        ScrollView {
            LazyVStack(pinnedViews: [.sectionHeaders]) {
                
                Section {
                    EmojiView(emoji: "😀")
                    EmojiView(emoji: "😍")
                    EmojiView(emoji: "😎")
                    
                } header: {
                    SectionHeaderView(title: "Emtion")
                }
                
                Section {
                    EmojiView(emoji: "🐶")
                    EmojiView(emoji: "🐱")
                    EmojiView(emoji: "🐯")
                    
                } header: {
                    SectionHeaderView(title: "Animals")
                }
                
                Section {
                    EmojiView(emoji: "🍎")
                    EmojiView(emoji: "🍌")
                    EmojiView(emoji: "🍓")
                } header: {
                    SectionHeaderView(title: "Fruits")
                }
                
            }.frame(maxWidth: .infinity)
        }
    }
}

struct Sections_Previews: PreviewProvider {
    static var previews: some View {
        Sections()
    }
}
