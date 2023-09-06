import SwiftUI

struct ConfirmationDialog_Tutorials: View {
    @State private var showConfirmation = false
    @State private var color = Color.black
    var body: some View {
        VStack {
            Spacer()
            
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(color)
            
            Spacer()
            
            Button {
                showConfirmation = true
            } label: {
                Text("Select Color")
            }
            .confirmationDialog("색상", isPresented: $showConfirmation, presenting: ColorData.samples) { colorData in
             
                ForEach(colorData) { item in
                    Button(item.title) {
                        color = item.color
                    }
                }
               
               
                Button(role: .cancel) {
                    
                } label: {
                    Text("Cancel")
                }

                Button(role: .destructive) {
                    color = Color.black
                } label: {
                    Text("Reset")
                }
            } message: { _ in
                Text("색상을 선택해주세요.")
            }
        }
    }
}

struct ConfirmationDialog_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationDialog_Tutorials()
    }
}
