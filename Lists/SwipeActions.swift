import SwiftUI

struct SwipeActions: View {
    @State private var favorites = [AppleProduct]()
    @State private var allProducts = AppleProduct.sampleList
    
    var body: some View {
        List {
            Section("Favorites") {
                ForEach(favorites) { item in
                    Text(item.name)
                        .swipeActions {
                            Button(role: .destructive) {
                                withAnimation {
                                    if let index = favorites.firstIndex(of: item) {
                                        favorites.remove(at: index)
                                    }
                                }
                            } label: {
                                Image(systemName: "trash")
                            }
                        }
                }
            }
            
            Section("All Products") {
                ForEach(allProducts) { item in
                    Text(item.name)
                        .swipeActions(edge: .leading, allowsFullSwipe: false) {
                            Button {
                                withAnimation {
                                    favorites.append(item)
                                }
                            } label: {
                                Image(systemName: "hand.thumbsup")
                            }
                            .tint(.blue)
                            
                            Button {
                                
                            } label: {
                                Text("Menu")
                            }
                        }
                    
                        .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                            Button(role: .destructive) {
                                withAnimation {
                                    if let index = favorites.firstIndex(of: item) {
                                        favorites.remove(at: index)
                                    }
                                }
                            } label: {
                                Image(systemName: "trash")
                            }
                            
                        }
                }
            }
        }
    }
}

struct SwipeActions_Previews: PreviewProvider {
    static var previews: some View {
        SwipeActions()
    }
}
