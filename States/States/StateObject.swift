import SwiftUI

struct StateObject_Tutorials: View {
    @State private var color: Color = Color.gray
    
    var body: some View {
        VStack {
            NumberView()
                .frame(width: 200, height: 200)
                .background(color)
                .clipShape(Circle())
            
            Button {
                color = Color(white: Double.random(in: 0.5 ... 1.0), opacity: 1.0)
            } label: {
                Text("Change Color")
            }
            .padding()
        }
    }
}

struct StateObject_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            StateObject_Tutorials()
        }
    }
}
