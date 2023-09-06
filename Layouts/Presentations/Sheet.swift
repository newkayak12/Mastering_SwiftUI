import SwiftUI

struct Sheet_Tutorials: View {
    @State private var presentCardModal = false
    @State private var fullScreenModal = false
    @State private var imageData: ImageData?
    
    var body: some View {
        VStack {
            Button {
//                presentCardModal = true
                imageData = ImageData(name: "big-photo", filters: [], date: .now)
            } label: {
                Text("Card Modal")
            }
            .padding()
//            .sheet(isPresented: $presentCardModal) {
//
//            } content: {
//                ImageScene(presentModal: $presentCardModal)
//            }
            .sheet(item: $imageData) { imageData in
                OptionalImageScene(imageData: imageData)
            }

            Button {
                fullScreenModal = true
            } label: {
                Text("Fullscreen")
            }
            .padding()
            .fullScreenCover(isPresented: $fullScreenModal) {
                
            } content: {
                ImageScene(presentModal: $fullScreenModal)
            }

        }
    }
}

struct Sheet_Previews: PreviewProvider {
    static var previews: some View {
        Sheet_Tutorials()
    }
}
