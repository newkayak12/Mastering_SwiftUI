import SwiftUI

struct ImageScene: View {
//    @Environment(\.presentationMode) var presentationMode
//    @Environment(\.dismiss) var dismiss //upper iOS15
    
    @Binding var presentModal: Bool
    
    var body: some View {
        Image("big-photo")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .ignoresSafeArea()
            .overlay(alignment: .top) {
                Button {
//                    presentationMode.wrappedValue.dismiss()
//                    dismiss()
                    
                    presentModal = false
                } label: {
                    Image(systemName: "x.circle")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.white)
                        .padding()
                }
            }
    }
}

struct ImageScene_Previews: PreviewProvider {
    static var previews: some View {
        ImageScene(presentModal: .constant(true))
    }
}
