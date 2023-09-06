
import SwiftUI

struct Popover_Tutorials: View {
    @State private var popOver = false
    
    var body: some View {
        Button(action: {
            popOver = true
        }, label: {
           Text("Show Popover")
        })
        .padding()
        .popover(isPresented: $popOver) {
            Form_Tutorials().frame(width: 320, height: 400)
        }
    }
}

struct Popover_Previews: PreviewProvider {
    static var previews: some View {
        Popover_Tutorials()
    }
}
